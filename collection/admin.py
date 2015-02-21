from django.contrib import admin
from  collection.models import Company, Point, Route, Delay
# Register your models here.

class PointsAdmin(admin.ModelAdmin):
    list_filter = ['point_company']

admin.site.register(Company)
admin.site.register(Point, PointsAdmin)
admin.site.register(Route)
admin.site.register(Delay)