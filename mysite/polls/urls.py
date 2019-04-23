from django.urls import path

from polls import views

urlpatterns = [
    path('index/', views.index, name="index"),
    path('detail/', views.detail, name="detail"),
    path('student/mainpage/', views.mainpage_student, name="mainpage_student"),
    path('student/mainpage/subject_detail/', views.subject_detail_student, name="subject_detail_student"),
    ]
