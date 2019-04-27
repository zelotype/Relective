from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User, Group
from django.contrib.auth.views import logout_then_login
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
# Create your views here.
from permission import permission

from polls.models import Courese_GenEd, GenEd_Subject, Faculty
from polls.models import User as member

subject_type = Courese_GenEd.objects.all()
all_subject = GenEd_Subject.objects.all()
list_user = member.objects.all()
faculty_list = Faculty.objects.all()

def navbar_subject():
    return subject_type

def nav_subjet_all():
    return all_subject

def get_user():
    return list_user
def get_Faculty():
    return faculty_list

def index(request):
    state_login = request.user
    if(state_login is not None):
        logout(request)
    adminlist = ['60070045','60070059']
    if (request.method == 'POST'):
        user_name = request.POST.get('user_name')
        email = request.POST.get('email')
        faculty_id = int(request.POST.get('faculty'))
        role = request.POST.get('role')
        list_name = user_name.split(" ")
        img = request.POST.get('img_url')
        user = authenticate(request,username=list_name[0],password=email);
        user_case_id = str(email[0:8])
        print(img)

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
            login(request,newUser)
            ans_faculty = ""
            for i in get_Faculty():
                if(i.id == faculty_id):
                    ans_faculty = i.id
            Profile = member.objects.create(
                name=user_name,
                role='student',
                email=email,
                user_auth_id=newUser.id,
                faculty_id = ans_faculty,
                img_url = img,
                verify=False,
                year_id=2
            )
        #     # if(user_case_id in adminlist):
        #     #     newUser.is_staff = True
        #     #     my_group = Group.objects.get(name='administrator')
            newUser.set_password(email)
        #     # my_group.user_set.add(request,newUser)
            newUser.save();
            login(request,newUser)
            redirect('mainpage_student')

    return render(request, 'index.html')
def my_logout(request):
    logout_then_login(request,"index")




# admin
# @login_required
def mainpage_admin(request):
    return render()


# student
# @login_required
def mainpage_student(request):
    ans = ""
    for i in get_user():
        if(request.user.id==i.user.id):
            ans = i
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    list1 = []
    list2 = []
    list3 = []
    list4 = []
    list5 = []
    list6 = []
    list7 = []
    list8 = []
    list9 = []
    list10 = []
    rou = 1
    for i in subject_name:
        if (rou < 18):
            list1.append(i)
        elif (rou < 36):
            list2.append(i)
        elif (rou < 54):
            list3.append(i)
        elif (rou < 72):
            list4.append(i)
        elif (rou < 90):
            list5.append(i)
        elif (rou < 108):
            list6.append(i)
        elif (rou < 126):
            list7.append(i)
        elif (rou < 144):
            list8.append(i)
        elif (rou < 162):
            list9.append(i)
        elif (rou < 180):
            list10.append(i)
        rou += 1
    context = {
        'subject_type': subject_type,
        'subject_name': subject_name,
        'sec1': list1,
        'sec2': list2,
        'sec3': list3,
        'sec4': list4,
        'sec5': list5,
        'sec6': list6,
        'sec7': list7,
        'sec8': list8,
        'sec9': list9,
        'sec10': list10,
        'member_info': ans
    }
    return render(request, 'student/mainpage.html', context=context)

# @login_required
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

def review_detail_student(request, subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
    }
    return render(request, 'student/review_page.html', context=context)


# teacher
# @login_required
def mainpage_teacher(request):
    return render()


# guest
def mainpage_guest(request):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    list1 = []
    list2 = []
    list3 = []
    list4 = []
    list5 = []
    list6 = []
    list7 = []
    list8 = []
    list9 = []
    list10 = []
    rou = 1
    for i in subject_name:
        if(rou<18):
            list1.append(i)
        elif(rou<36):
            list2.append(i)
        elif (rou < 54):
            list3.append(i)
        elif (rou < 72):
            list4.append(i)
        elif (rou < 90):
            list5.append(i)
        elif (rou < 108):
            list6.append(i)
        elif (rou < 126):
            list7.append(i)
        elif (rou < 144):
            list8.append(i)
        elif (rou < 162):
            list9.append(i)
        elif (rou < 180):
            list10.append(i)
        rou += 1
    context = {
        'subject_type': subject_type,
        'subject_name': subject_name,
        'sec1': list1,
        'sec2': list2,
        'sec3': list3,
        'sec4': list4,
        'sec5': list5,
        'sec6': list6,
        'sec7': list7,
        'sec8': list8,
        'sec9': list9,
        'sec10': list10,
    }
    return render(request, 'guest/mainpage.html', context=context)

def subject_detail_guest(request, subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,

    }
    return render(request, 'guest/subject_detail.html', context=context)

def review_detail_guest(request, subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
    }
    return render(request, 'guest/review_page.html', context=context)


def singInbyGuest(request):
    return redirect('mainpage_guest')
