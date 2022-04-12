from . import views
from django.urls import path

urlpatterns = [
    path('', views.index, name='index'),
    path('locations/', views.ReactLocationView.as_view(), name='locations'),
]