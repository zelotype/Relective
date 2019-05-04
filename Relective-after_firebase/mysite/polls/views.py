from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User, Group
from django.contrib.auth.views import logout_then_login
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
# Create your views here.
from permission import permission

from polls.forms import ReviewForm, CommentForm
from polls.models import Courese_GenEd, GenEd_Subject, Faculty, Course_Major, Subject_require, Student_Year, Review, \
    Comment, RateReview
from polls.models import User as member

subject_type = Courese_GenEd.objects.all()
all_subject = GenEd_Subject.objects.all()
list_user = member.objects.all()
faculty_list = Faculty.objects.all()

user_obj = {
    'user_id': '',
    'name': '',
    'email': '',
    'faculty_id': 0,
    'major_id': 0,
    'user_auth_id': 0,
    'verify': False,
    'img_url': '',
    'role': '',
    'year_id': 0,
}


def navbar_subject():
    return subject_type


def nav_subjet_all():
    return all_subject


def get_user():
    return list_user


def get_Faculty():
    return faculty_list


def index(request):
    if (request.user is not None):
        logout(request)
    adminlist = ['60070045', '60070059']
    if (request.method == 'POST'):
        user_obj['name'] = request.POST.get('user_name')
        user_obj['email'] = request.POST.get('email')
        # user_obj['faculty_id'] = int(request.POST.get('faculty'))
        user_obj['role'] = request.POST.get('role')
        user_obj['img_url'] = request.POST.get('img_url')
        chk = request.POST.get('email')
        user_obj['year_id'] = abs(int(chk[0:2]) - 62)
        user = authenticate(request, username=request.POST.get('user_name'), password=request.POST.get('email'))
        context = {
            'userinformation': user_obj
        }
        if user:
            login(request, user)
            for cases in member.objects.all():
                if (user.id == cases.user_auth_id):
                    user_obj['user_id'] = cases.id;
                    user_obj['name'] = cases.name;
                    user_obj['email'] = cases.email;
                    user_obj['faculty_id'] = cases.faculty_id;
                    user_obj['major_id'] = cases.major_id;
                    user_obj['user_auth_id'] = cases.user_auth_id;
                    user_obj['verify'] = True;
                    user_obj['img_url'] = cases.img_url;
                    user_obj['role'] = cases.role;
                    user_obj['year_id'] = cases.year_id;
                    return redirect('mainpage_student')
                else:
                    return redirect('set_infor_student')
        else:
            users = User.objects.create(
                username=request.POST.get('user_name'),
                email=request.POST.get('email'),
            )

            users.set_password(request.POST.get('email'))

            users.save()
            login(request, users)
        return redirect('set_infor_student')
    return render(request, 'index.html')


def my_logout(request):
    logout_then_login(request, "index")


# admin
# @login_required
def mainpage_admin(request):
    return render()


# student
# @login_required
@login_required
def set_infor_student(request):
    if (request.method == 'POST'):
        user_obj['faculty_id'] = request.POST.get('faculty_id')
        user_obj['major_id'] = request.POST.get('major_id')
        return redirect('update_infor_student')
    context = {
        'Userinfor': user_obj
    }
    return render(request, 'student/first_signin_form/setDefalt.html', context=context)


@login_required
def update_infor_student(request):
    list_major1 = [570701, 59072, 59073]
    ans = []
    aaa = member()
    if (request.method == 'POST'):
        for fac in faculty_list:
            if int(fac.id) == int(user_obj['faculty_id']):
                for year in Student_Year.objects.all():
                    if (int(user_obj['year_id']) == int(year.id)):
                        for ll in Course_Major.objects.all():
                            if (int(ll.id) == int(user_obj['major_id'])):
                                print("yessssssss")
                                aaa = member.objects.create(
                                    name=user_obj['name'],
                                    role=user_obj['role'],
                                    email=user_obj['email'],
                                    faculty=fac,
                                    major_id=ll.id,
                                    year_id=year.id,
                                    user_auth=request.user,
                                    verify=True,
                                    img_url=user_obj['img_url'],
                                )
        user_obj['user_id'] = aaa.id
        for i in request.POST:
            if (i == 'csrfmiddlewaretoken'):
                pass
            else:
                for z in request.POST.getlist(i):
                    if (int(z) == 0):
                        print("asdadadad")
                        for x in navbar_subject():
                            if (int(x.id) == int(i)):
                                print(i)
                                Subject_require.objects.create(
                                    status=False,
                                    user_id_id=aaa.id,
                                    subject_type=x
                                )
                    else:
                        for x in navbar_subject():
                            if (x.id == int(i)):
                                for v in nav_subjet_all():
                                    if (v.id == int(z)):
                                        Subject_require.objects.create(
                                            status=True,
                                            user_id_id=aaa.id,
                                            subject_type=x,
                                            subject_id=v,
                                        )

        return redirect('mainpage_student')
    else:
        if (user_obj['major_id'] in str(list_major1)):
            ans = [{'major_id': 571}, {'major_id': 571}, {'major_id': 572}, {'major_id': 572},
                   {'major_id': 572}, {'major_id': 572}, {'major_id': 573}, {'major_id': 573},
                   {'major_id': 574}, {'major_id': 574}]
    context = {
        'Userinfor': user_obj,
        'major_list': ans,
        'subject_all': nav_subjet_all(),
        'subject_type': navbar_subject(),
    }

    return render(request, 'student/first_signin_form/settingInformation.html', context=context)


@login_required
def mainpage_student(request):
    ans = ""
    for i in member.objects.all():
        if (request.user.id == i.user_auth_id):
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
        'member_info': ans,
        'user': user_obj,
        'subject_req': Subject_require.objects.filter(user_id_id=ans.id),
        'review': Review.objects.all()
    }
    return render(request, 'student/mainpage.html', context=context)


@login_required
def subject_detail_student(request, subject_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    ans = ""
    state_annonymous = False
    reviewform = ReviewForm
    if request.POST.get('annonymous') == 'on':
        state_annonymous = True;
    for i in member.objects.all():
        if (request.user.id == i.user_auth_id):
            ans = i
    if request.method == "POST":
        print(request.POST)
        if request.POST.get('plus') == '1':
            ans = Review.objects.get(pk=subject_id)
            ans.report += 1
            ans.save()
        else:
            reviewform = ReviewForm(request.POST, request.FILES)
            if (reviewform.is_valid()):
                if request.FILES.get('cover') != "":
                    Review.objects.create(
                        title=request.POST.get('title'),
                        detail=request.POST.get('detail'),
                        subject_id_id=request.POST.get('subject_id'),
                        user_id_id=ans.id,
                        cover=request.FILES.get('cover'),
                        annonymous=state_annonymous,
                        verify=False
                    )
                else:
                    Review.objects.create(
                        title=request.POST.get('title'),
                        detail=request.POST.get('detail'),
                        subject_id_id=request.POST.get('subject_id'),
                        user_id_id=ans.id,
                        cover=request.FILES.get('cover'),
                        annonymous=state_annonymous,
                    )
    else:
        reviewform = ReviewForm
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
        'user': user_obj,
        'subject_req': Subject_require.objects.filter(user_id_id=ans.id),
        'member_info': ans,
        'review_form': reviewform,
        'review': Review.objects.all()
    }
    return render(request, 'student/subject_detail.html', context=context)


@login_required
def review_detail_student(request, subject_id, review_id):
    subject_type = navbar_subject()
    subject_name = nav_subjet_all()
    subject_purpose = subject_name.get(pk=subject_id)
    for i in member.objects.all():
        if (request.user.id == i.user_auth_id):
            ans = i
    if request.method == 'POST':
        if request.POST.get('plus') == '1':
            ans = Review.objects.get(pk=review_id)
            ans.report += 1
            ans.save()
        else:
            if (request.POST.get('detail') != None):
                Comment.objects.create(
                    detail=request.POST.get('detail'),
                    review_id=Review.objects.get(pk=review_id).id,
                    user_id_id=ans.id
                )
            if (request.POST.get('point')):
                listchk = RateReview.objects.all()
                chk = False
                for i in listchk:
                    print(i)
                    if (i.review.id == review_id and i.user.id == ans.id):
                        i.point = request.POST.get('point')
                        i.save()
                        chk = True
                if (chk == False):
                    RateReview.objects.create(
                        point=request.POST.get('point'),
                        review_id=review_id,
                        user_id=ans.id
                    )
    rate = 0
    for j in RateReview.objects.all():
        if (j.review.id == review_id):
            rate += int(j.point)
            print(j)
    context = {
        'subject_purpose': subject_purpose,
        'subject_type': subject_type,
        'subject_name': subject_name,
        'subject_req': Subject_require.objects.filter(user_id_id=ans.id),
        'member_info': ans,
        'review': Review.objects.get(pk=review_id),
        'CommentForm': CommentForm,
        'comment': Comment.objects.filter(review_id=review_id),
        'RateReview': rate
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
