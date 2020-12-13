from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static
import django


urlpatterns = [
    path('', views.book, name='book'),
    path('books', views.bookdetails, name='bookdetails'),
]

"""
urlpatterns = [
    url('media/', django.views.static.serve,
             {'document_root': settings.MEDIA_ROOT}),
]"""