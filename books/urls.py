from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static
from .views import bookdetails

urlpatterns = [
    path('', views.book, name='book'),
    path('books/<int:book_id>/',bookdetails,name='bookdetails'),
]