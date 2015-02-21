from django.db import models

# Create your models here.

class Company(models.Model):
    class Meta():
        db_table = "company"

    company_name = models.CharField(max_length=200)
    company_color = models.CharField(max_length=50)
    company_logo = models.CharField(max_length=50)

    def __unicode__(self):
        return self.company_name


class Point(models.Model):
    class Meta():
        db_table = "point"

    point_address = models.CharField(max_length=200)
    point_telephone = models.CharField(max_length=50, default="+7(909)-905-73-32")
    point_coordinates = models.CharField(max_length=100)
    point_time_collection = models.TimeField()
    point_delay_collection = models.TimeField(default="00:00:00")
    point_delay_color = models.CharField(max_length=50, default="black")
    point_status_collection = models.BooleanField(default=False)
    point_company = models.ForeignKey(Company)

    def __unicode__(self):
        return self.point_address


class Route(models.Model):
    class Meta():
        db_table = "route"

    route_current_position = models.CharField(max_length=100)
    route_color = models.CharField(max_length=50, default="808080")
    route_point = models.ForeignKey(Point)

    def __unicode__(self):
        return self.route_current_position


class Delay(models.Model):
    class Meta():
        db_table = "delay"

    delay_name = models.CharField(max_length=50)
    delay_max = models.TimeField(default="00:00:00")

    def __unicode__(self):
        return self.delay_name