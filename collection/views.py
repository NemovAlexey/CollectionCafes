# coding=utf-8
from django.shortcuts import render_to_response, redirect
from django.http.response import Http404
from django.core.exceptions import ObjectDoesNotExist
from models import Company, Point, Route, Delay
from datetime import datetime, timedelta


def detail(request, point_id):
    return render_to_response('point.js', dict(point=Point.objects.get(id=point_id)))


def company_on_map(request, company_id):
    return render_to_response('company_on_map.js', dict(company=Company.objects.get(id=company_id),
                                                        points=Point.objects.filter(point_company=company_id)))


def points_on_map(request):
    now = datetime.now()
    null = (datetime.strptime("0:00:00", "%H:%M:%S")).time()
    delay_max = Delay.objects.get(delay_name="15 minutes").delay_max
    for point in Point.objects.all():
        tc = datetime.combine(now.date(), point.point_time_collection)
        if now > tc and point.point_status_collection == False:
            delay = (now - timedelta(hours=tc.hour, minutes=tc.minute, seconds=tc.second)).time()
        else:
            delay = null
        if delay > delay_max:
            color = "#FF0000"  # red
        else:
            color = "#008000"  # green
        point.point_delay_color = color
        point.point_delay_collection = delay
        point.save()
    return render_to_response('points_on_map.js', {'companies': Company.objects.all(),
                                                   'points': Point.objects.all()})


def logo_map(request):
    return render_to_response('logo_map.js', {'companies': Company.objects.all(),
                                              'points': Point.objects.all()})


def routes(request):
    point1 = Point.objects.get(point_address="Московская обл., Химки г., Ленинградское ш., вл. 5")
    point2 = Point.objects.get(point_address="Реутов, ул.Октября, стр.10")
    point3 = Point.objects.get(point_address="Москва, ул. Покрышкина, 4")
    return render_to_response('route.js', dict(routes=Route.objects.all(),
                                               point1=point1,
                                               point2=point2,
                                               point3=point3,
                                               companies=Company.objects.all()))


def check_delay(request):
    now = datetime.now()
    null = (datetime.strptime("0:00:00", "%H:%M:%S")).time()
    delay_max = Delay.objects.get(delay_name="15 minutes").delay_max
    for point in Point.objects.all():
        tc = datetime.combine(now.date(), point.point_time_collection)
        if now > tc and point.point_status_collection == False:
            delay = (now - timedelta(hours=tc.hour, minutes=tc.minute, seconds=tc.second)).time()
        else:
            delay = null
        if delay > delay_max:
            color = "#FF0000"  # red
        else:
            color = "#008000"  # green
        point.point_delay_color = color
        point.point_delay_collection = delay
        point.save()
    return render_to_response('points.html', dict(companies=Company.objects.all(),
                                                  points=Point.objects.all()))


def status_collection(request, point_id):
    try:
        point = Point.objects.get(id=point_id)
        point.point_status_collection = "True"
        point.save()
    except ObjectDoesNotExist:
        raise Http404
    return redirect('/points/')


def reset_status_collection(request):
    try:
        Point.objects.all().update(point_status_collection=False)
    except ObjectDoesNotExist:
        raise Http404
    return redirect('/points/')