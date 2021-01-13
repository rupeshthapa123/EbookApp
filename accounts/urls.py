from django.urls import path
from . import views
from django.conf.urls import url
from django.contrib.auth.views import PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView, PasswordResetCompleteView

urlpatterns = [
    path('register',views.register,name='register'),
    path('login',views.login,name='login'),
    path('logout',views.logout,name='logout'),
    path('edit_profile', views.edit_profile, name='edit_profile'),
    path('view_profile', views.view_profile, name='view_profile'),
    url(r'^profile/(?P<pk>\d+)/$', views.view_profile, name='view_profile_with_pk'),
    path('change_password', views.change_password, name='change_password'),
    path('reset_password', PasswordResetView.as_view(), name='reset_password'),
    path('reset_password/done', PasswordResetDoneView.as_view(), name='reset_password_done'),
    path('reset_password/done/confirm', PasswordResetConfirmView.as_view(), name='reset_password_confirm'),
    path('reset_password/complete', PasswordResetCompleteView.as_view(), name='reset_password_complete'),
    path('del_user', views.del_user, name='del_user'),
    path('favourite/<int:id>/', views.favourite_add, name='favourite_add'),
    path('favourite_list',views.favourite_list, name='favourite_list'),
    path('contactview', views.contactview, name='contactview'),
]
