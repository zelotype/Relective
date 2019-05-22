from django.contrib import admin
from django.contrib.auth.models import Permission
# Register your models here.
from polls.models import User, Faculty, Course_Year, Student_Year, Courese_GenEd, Course_Major, GenEd_Subject, Review, \
    Comment, Subject_require

class managePageAdmin(admin.ModelAdmin):
    list_display = ["id", "name_th", "name_eng", "credit", ]
    list_filter = ["name_th"]
    search_fields = ["id", "name_th", "name_eng", "credit"]
    list_per_page = 15

class manageReview(admin.ModelAdmin):
    list_display = ['title', 'detail']

    def get_readonly_fields(self, request, obj=None):
        if obj:
            return ['title','detail','annonymous','teacher_name','study_year','user_id','cover','subject_id']
        else:
            return ['verify']
class manageComment(admin.ModelAdmin):
    list_display = ['user_id_id','detail']
    def get_readonly_fields(self, request, obj=None):
        if obj:
            return ['id','detail','review_id','report','user_id_id','user_id',]
class manageUserProfile(admin.ModelAdmin):
    list_display = ['id','user_auth_id','name','email','role','faculty','major','year_id','verify']


class manageSubReq(admin.ModelAdmin):
    list_display = ['user_id_id','subject_id_id','subject_type_id','status']
admin.site.register(Permission)
admin.site.register(User,manageUserProfile)
admin.site.register(Faculty)
admin.site.register(Course_Year)
admin.site.register(Courese_GenEd)
admin.site.register(Course_Major)
admin.site.register(GenEd_Subject, managePageAdmin)
admin.site.register(Review, manageReview)
admin.site.register(Comment,manageComment)
admin.site.register(Subject_require,manageSubReq)
