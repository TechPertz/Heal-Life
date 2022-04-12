from django.db import models
from django.contrib.gis.db import models

# Create your models here.

class Sport(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

class Location(models.Model):
    name = models.CharField(max_length=100)
    location = models.PointField()
    address = models.CharField(max_length=100)
    city = models.CharField(max_length=50)

class Team(models.Model):
    id = models.AutoField
    team_name = models.CharField(max_length=50)
    sports = models.CharField(max_length=50)
    filled = models.IntegerField(default=0)
    required = models.IntegerField(default=0)
    description = models.CharField(max_length=300, default="")

    def __str__(self):
        return self.team_name