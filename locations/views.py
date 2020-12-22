from django.shortcuts import render
# Create your views here.
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .forms import LocationForm
from .models import Location
from .serializers import LocationSerializer
import json

def location_list(request):
    locations = Location.objects.all()
    serialized_locations = LocationSerializer(locations).all_locations
    return JsonResponse(data=serialized_locations, status=200)


def location_detail(request, location_id):
    location = Location.objects.get(id=location_id)
    serialized_location = LocationSerializer(location).location_detail
    return JsonResponse(data=serialized_location, status=200)

@csrf_exempt
def new_location(request):
    if request.method == "POST":
        data = json.load(request)
        form = LocationForm(data)
        if form.is_valid():
            location = form.save(commit=True)
            serialized_location = LocationSerializer(location).location_detail
            return JsonResponse(data=serialized_location, status=200)

@csrf_exempt
def edit_location(request, location_id):
    location = Location.objects.get(id=location_id)
    if request.method == "POST":
        data = json.load(request)
        form = LocationForm(data, instance=location)
        if form.is_valid():
            location = form.save(commit=True)
            serialized_location = LocationSerializer(location).location_detail
            return JsonResponse(data=serialized_location, status=200)

@csrf_exempt
def delete_location(request, location_id):
    if request.method == "POST":
        location = Location.objects.get(id=location_id)
        location.delete()
    return JsonResponse(data={'status': 'Successfully deleted location.'}, status=200)