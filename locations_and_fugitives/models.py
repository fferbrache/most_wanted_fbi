from django.db import models

# Create your models here.
class Location(models.Model):
    name = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    phone = models.CharField(max_length=200)
    description = models.TextField()

    def __str__(self):
        return f"id: {self.id}, name={self.name}, address={self.address}, phone={self.phone}, description={self.description}"

# class Fugitive(models.Model):
#     location = models.ForeignKey(Location, on_delete=models.CASCADE, related_name='fugitives')
#     category = models.CharField(max_length=200)
#     title = models.CharField(max_length=200)
#     info = models.TextField(default='Fugitive Details')
#     tips = models.TextField(default='Provide a tip.')
#     link = models.CharField(max_length=200, default='Link to fugitive')

#     def __str__(self):
#         return f"id={self.id}, category={self.category}, title={self.title}, info={self.info}, tips={self.tips}, link={self.link}"