from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.models import User, Group
from django.contrib.auth.views import logout_then_login
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect

# Create your views here.
from polls.models import Courese_GenEd, GenEd_Subject


def navbar_subject():
    subject_type = Courese_GenEd.objects.all()
    return subject_type


def nav_subjet_all():
    all_subject = GenEd_Subject.objects.all()
    return all_subject


def index(request):
    adminlist = ['60070045','60070059']
    if (request.method == 'POST'):
        user_name = request.POST.get('user_name')
        email = request.POST.get('email')
        faculty_id = request.POST.get('faculty')
        role = request.POST.get('role')
        list_name = user_name.split(" ")
        user = authenticate(request,username=list_name[0],password=email);
        user_case_id = str(email[0:8])
        print(user)

        if user is not None:
            login(request,user)
            print("login_success")
            return redirect('mainpage_student')
        else:
            newUser = User.objects.create(
                username=list_name[0],
                first_name=list_name[0],
                last_name=list_name[1],
            )
            newUser.set_password(email)
            newUser.save();
            print(newUser)
            print("login Success")
            login(request,newUser)
        #     # if(user_case_id in adminlist):
        #     #     newUser.is_staff = True
        #     #     my_group = Group.objects.get(name='administrator')
        #     newUser.set_password(email)
        #     # my_group.user_set.add(request,newUser)
        #     newUser.save();
        #     login(request,newUser)
        #     redirect('mainpage_student')

    return render(request, 'index.html')


def detail(request):
    return HttpResponse("Detail")


def my_logout(request):
    logout_then_login(request,"index")


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
    return render(request, 'student/mainpage.html', context=context)


def subject_detail_student(request, subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
    }
    return render(request, 'student/subject_detail.html', context=context)


# teacher
def mainpage_teacher(request):
    return render()


# guest
def mainpage_guest(request):
    return render()
