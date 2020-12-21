from django.urls import path
from . import views

urlpatterns = [
    path('', views.location_list, name='location_list'),
    path('new', views.new_location, name='new_location'),
    path('<int:location_id>', views.location_detail, name='location_detail'),
    path('<int:location_id>/edit', views.edit_location, name='edit_location'),
    path('<int:location_id>/delete', views.delete_location, name='delete_location'),
]