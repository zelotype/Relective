from django.conf.urls.static import static
from django.urls import path

from mysite import settings
from polls import views

urlpatterns = [
    path('index/', views.index, name="index"),
    path('student/mainpage/', views.mainpage_student, name="mainpage_student"),
    path('student/subject_detail/<int:subject_id>/', views.subject_detail_student, name="subject_detail_student"),
    path('logout/', views.logout, name="logout"),
    path('guest/mainpage/', views.mainpage_guest, name="mainpage_guest"),
    path('guest/signIn', views.singInbyGuest, name="guest_signIn"),
    path('guest/subject_detail/<int:subject_id>/', views.subject_detail_guest, name="subject_detail_guest"),
    path('guest/subject_detail/<int:subject_id>/review_detail/', views.review_detail_guest, name="review_detail_guest"),
    path('student/subject_detail/<int:subject_id>/review_detail/<int:review_id>', views.review_detail_student,
         name="review_detail_student"),
    path('student/setupInformation', views.set_infor_student, name="set_infor_student"),
    path('student/setupInformation/submitform/', views.update_infor_student, name="update_infor_student")
]

if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)