from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from polls.models import Courese_GenEd, GenEd_Subject


def navbar_subject():
    subject_type = Courese_GenEd.objects.all()
    return subject_type
def nav_subjet_all():
    all_subject = GenEd_Subject.objects.all()
    return all_subject



def index(request):
    return render(request,'index.html')

def detail(request):
    return HttpResponse("Detail")




# admin

def mainpage_admin(request):
    return render()











# student
def mainpage_student(request):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    context = {
        'subject_type': subject_type,
        'subject_name': subject_name,
    }
    return render(request,'student/mainpage.html',context=context)



def subject_detail_student(request,subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    context = {
        'subject_purpose':subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
    }
    return render(request,'student/subject_detail.html',context=context)







# teacher
def mainpage_teacher(request):
    return render()







# guest
def mainpage_guest(request):
    return render()
