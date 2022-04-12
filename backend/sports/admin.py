from django.contrib import admin

from django.contrib.gis.admin import OSMGeoAdmin
from .models import Sport, Location, Team

admin.site.register(Sport)
@admin.register(Location)
class ShopAdmin(OSMGeoAdmin):
    list_display = ('name', 'location')
admin.site.register(Team)
