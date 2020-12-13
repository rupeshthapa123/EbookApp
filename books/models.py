from django.db import models

# Create your models here.
class Book(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    publisher = models.CharField(max_length=100)
    language = models.CharField(max_length=100)
    pub_date = models.DateField()
    description = models.TextField()
    categories =  models.CharField(max_length=100)
    cover_image = models.ImageField(upload_to='images')
    book_file = models.FileField(upload_to='documents/')
    