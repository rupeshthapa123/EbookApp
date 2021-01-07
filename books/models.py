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

    def __str__(self):
        return self.title

class Comment(models.Model):
    book = models.ForeignKey(Book,on_delete=models.CASCADE,related_name='comments')
    name = models.CharField(max_length=80)
    email = models.EmailField()
    body = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=False)
    
    def __str__(self):
        return 'Comment {} by {}'.format(self.body, self.name)

    class Meta:
        ordering = ['created_on']
    
