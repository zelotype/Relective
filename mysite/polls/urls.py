from django.urls import path

from polls import views

urlpatterns = [
    path('index/', views.index,name="index"),
    path('detail/', views.detail,name="detail"),
]
