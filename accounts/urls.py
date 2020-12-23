from django.urls import path
from . import views
from django.conf.urls import url

urlpatterns = [
    path('register',views.register,name='register'),
    path('login',views.login,name='login'),
    path('logout',views.logout,name='logout'),
    path('edit_profile', views.edit_profile, name='edit_profile'),
    path('view_profile', views.view_profile, name='view_profile'),
    url(r'^profile/(?P<pk>\d+)/$', views.view_profile, name='view_profile_with_pk'),
]