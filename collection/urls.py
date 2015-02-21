from django.conf.urls import patterns, include, url
from collection import views

urlpatterns = patterns('',
                       url(r'^points/reset/', views.reset_status_collection, name='reset'),
                       url(r'^points/status/(?P<point_id>\d+)/', views.status_collection, name='status'),
                       url(r'^points/get/(?P<point_id>\d+)/', views.detail, name='detail'),
                       url(r'^map/company_on_map/(?P<company_id>\d+)/', views.company_on_map, name='company_on_map'),
                       url(r'^map/', views.points_on_map, name='map'),
                       url(r'^logo_map/', views.logo_map, name='logo_map'),
                       url(r'^points/', views.check_delay, name='points'),
                       url(r'^routes/', views.routes, name='routes'),
                       url(r'^', views.logo_map, name='index'),

)