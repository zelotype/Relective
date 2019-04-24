from django.db import models

class Course_Year(models.Model):
    old = 2557
    new = 2559
    Type = ((old,2557),(new,2559))
    type = models.IntegerField(choices=Type,default=old)


class Faculty(models.Model):
    name = models.CharField(max_length=255,null=False)



class Student_Year(models.Model):
    one = 1
    two = 2
    three = 3
    four = 4
    five = 5
    six = 6
    seven = 7
    eight = 8
    Number = ((one,1),(two,2),(three,3),(four,4),(five,5),(six,6),(seven,7),(eight,8))
    number = models.IntegerField(choices=Number,default=one)

class Courese_GenEd(models.Model):
    name = models.CharField(max_length=255)
    year = models.ForeignKey(Course_Year,on_delete=models.PROTECT)


class Course_Major(models.Model):
    name = models.CharField(max_length=255, null=False)
    faculty = models.ForeignKey(Faculty,on_delete=models.PROTECT)
    course_year = models.ForeignKey(Course_Year,on_delete=models.PROTECT)


class GenEd_Subject(models.Model):
    name_th = models.CharField(max_length=255,null=False)
    name_eng = models.CharField(max_length=255, null=False, default="")
    categories = models.ForeignKey(Courese_GenEd,on_delete=models.PROTECT)
    description = models.TextField()
    prerequisite = models.IntegerField(default=1)
    credit = models.IntegerField(default=1)


class User(models.Model):
    name = models.CharField(max_length=255, null=False)
    admin = 'administrator'
    student = 'student'
    teacher = 'teacher'
    Role = ((admin,"Admin"),
            (student,"Student"),
            (teacher,"Teacher"))
    role = models.CharField(max_length=10,choices=Role)
    faculty = models.ForeignKey(Faculty,on_delete=models.PROTECT)
    year = models.ForeignKey(Student_Year,on_delete=models.PROTECT)
    email = models.EmailField()
    major = models.ForeignKey(Course_Major,null=False,on_delete=models.PROTECT)
    user = models.OneToOneField('auth.User', on_delete=models.CASCADE)
    verify = models.BooleanField(default=False)


class Review(models.Model):
    title = models.CharField(max_length=255,null=False)
    detail = models.TextField(null=False)
    subject_id = models.ForeignKey(GenEd_Subject,on_delete=models.PROTECT)
    verify = models.BooleanField()
    user_id = models.ForeignKey(User,on_delete=models.PROTECT,null=False)

class Comment(models.Model):
    review = models.ForeignKey(Review,on_delete=models.CASCADE)
    user_id = models.ForeignKey(User,on_delete=models.PROTECT)
    detail = models.TextField(null=False)



class Subject_require(models.Model):
    user_id = models.ForeignKey(User,on_delete=models.PROTECT)
    detail = models.TextField()
    status = models.BooleanField(default=False,null=False)
