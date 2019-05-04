from django.db import models


class Course_Year(models.Model):
    old = 2557
    new = 2559
    Type = ((old, 2557), (new, 2559))
    type = models.IntegerField(choices=Type, default=old)


class Faculty(models.Model):
    name = models.CharField(max_length=255, null=False)

    def __str__(self):
        return '%s' % (self.name)

    def __unicode__(self):
        return self.name


class Student_Year(models.Model):
    one = 1
    two = 2
    three = 3
    four = 4
    five = 5
    six = 6
    seven = 7
    eight = 8
    Number = ((one, 1), (two, 2), (three, 3), (four, 4), (five, 5), (six, 6), (seven, 7), (eight, 8))
    number = models.IntegerField(choices=Number, default=one)


class Courese_GenEd(models.Model):
    name = models.CharField(max_length=255)
    year = models.ForeignKey(Course_Year, on_delete=models.PROTECT)


class Course_Major(models.Model):
    name = models.CharField(max_length=255, null=False)
    faculty = models.ForeignKey(Faculty, on_delete=models.PROTECT)
    course_year = models.ForeignKey(Course_Year, on_delete=models.PROTECT)

    def __str__(self):
        return '%s' % (self.name)

    def __unicode__(self):
        return self.name


class GenEd_Subject(models.Model):
    name_th = models.CharField(max_length=255, null=False)
    name_eng = models.CharField(max_length=255, null=False, default="")
    categories = models.ForeignKey(Courese_GenEd, on_delete=models.PROTECT)
    description = models.TextField()
    prerequisite = models.IntegerField(default=1)
    credit = models.IntegerField(default=1)


class User(models.Model):
    name = models.CharField(max_length=255, null=False)
    admin = 'administrator'
    student = 'student'
    teacher = 'teacher'
    Role = ((admin, "Admin"),
            (student, "Student"),
            (teacher, "Teacher"))
    role = models.CharField(max_length=10, choices=Role)
    faculty = models.ForeignKey(Faculty, on_delete=models.PROTECT)
    year = models.ForeignKey(Student_Year, on_delete=models.PROTECT)
    email = models.EmailField()
    major = models.ForeignKey(Course_Major, null=False, on_delete=models.PROTECT)
    user_auth = models.OneToOneField('auth.User', on_delete=models.CASCADE)
    verify = models.BooleanField(default=False, null=False)
    img_url = models.CharField(max_length=20000, null=True)


class Review(models.Model):
    title = models.CharField(max_length=255, null=True)
    detail = models.TextField(null=True, blank=True)
    subject_id = models.ForeignKey(GenEd_Subject, on_delete=models.CASCADE)
    verify = models.BooleanField(null=True)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    cover = models.ImageField(upload_to='images/', null=True)
    report = models.IntegerField(default=0)
    annonymous = models.BooleanField(default=False, )
    report_detail = models.TextField(null=True, blank=True)


class Comment(models.Model):
    review = models.ForeignKey(Review, on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    detail = models.TextField(null=False)
    report = models.IntegerField(default=0)


class RateReview(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(Review, on_delete=models.CASCADE)
    point = models.IntegerField(default=0)


class Subject_require(models.Model):
    user_id = models.ForeignKey(User, on_delete=models.PROTECT)
    subject_type = models.ForeignKey(Courese_GenEd, on_delete=models.PROTECT)
    status = models.BooleanField(default=False, null=False)
    subject_id = models.ForeignKey(GenEd_Subject, on_delete=models.PROTECT, null=True)
