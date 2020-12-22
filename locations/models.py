from django.db import models

# Create your models here.
class Location(models.Model):
    location_name = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    phone = models.CharField(max_length=200)
    description = models.TextField()

    def __str__(self):
        return self.location_name