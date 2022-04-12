# from django.views import generic
from django.contrib.gis.geos import fromstr, Point
# from django.contrib.gis.measure import Distance
from . models import *
from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from . serializer import *

# Create your views here.

longitude = 19.127730749999998
latitude = 72.83693882433897

user_location = Point(longitude, latitude, srid=4326)

def index(request):
    locations = Location.objects.all().order_by('?')
    # random.shuffle(locations)
    # locations = Location.objects.annotate(distance=Distance('location',user_location))
    print(str(locations))
    return render(request, 'sports/index.html', {'locations' : locations})

class ReactLocationView(APIView):
    
    serializer_class = ReactSerializer
  
    def get(self, request):
        detail = [ {"name": loc.name} 
        for loc in Location.objects.all().order_by('?')]
        detail = detail[0:10]
        return Response(detail)
  
    def post(self, request):
  
        serializer = ReactSerializer(data=request.data)
        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return  Response(serializer.data)

