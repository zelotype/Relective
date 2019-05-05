from django.contrib import admin
from django.contrib.auth.models import Permission
# Register your models here.
from polls.models import User, Faculty, Course_Year, Student_Year, Courese_GenEd, Course_Major, GenEd_Subject, Review, \
    Comment, Subject_require

class managePageAdmin(admin.ModelAdmin):
    list_display = ["id","name_th","name_eng","credit",]
    list_filter = ["name_th"]
    search_fields = ["id","name_th","name_eng","credit"]



admin.site.register(Permission)
admin.site.register(User)
admin.site.register(Faculty)
admin.site.register(Course_Year)
admin.site.register(Student_Year)
admin.site.register(Courese_GenEd)
admin.site.register(Course_Major)
admin.site.register(GenEd_Subject,managePageAdmin)
admin.site.register(Review)
admin.site.register(Comment)
admin.site.register(Subject_require)