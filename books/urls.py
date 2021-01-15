from django.urls import path
from . import views
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static
from .views import bookdetails, text2audio

urlpatterns = [
    path('', views.book, name='book'),
    path('books/<int:book_id>/',bookdetails,name='bookdetails'),
    path('search',views.search, name='search'),
    path('category',views.category, name='category'),
    path('Classcategory',views.Classcategory, name='Classcategory'),
    path('Educategory',views.Educategory, name='Educategory'),
    path('Allcategory',views.Allcategory, name='Allcategory'),
    path('text2audio/<int:id>/', text2audio, name='text2audio'),
    path('audio/<int:id>/',views.audio, name='audio')
]