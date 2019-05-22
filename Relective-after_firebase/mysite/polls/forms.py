from distutils.command import clean
from django import forms
from polls.models import User, Course_Major, Review, Comment, ReportReview

class ReviewForm(forms.ModelForm):
    title = forms.CharField(required=False)
    detail = forms.CharField(required=False, widget=forms.Textarea(attrs={'class': 'detail_input'}))
    cover = forms.ImageField(required=False)
    class Meta:
        model = Review
        fields = ['title', 'detail', 'annonymous', 'cover', 'study_year', 'teacher_name']
        widgets = {
            'title': forms.TextInput(attrs={'class': 'title_input'}),
            'detail': forms.Textarea(attrs={'class': 'detail_input'}),
        }

    def clean(self):
        bad_word = ['เหี้ย', 'สัส',';','[',']',':','"',"'"]
        clean_data = super().clean()
        title = clean_data.get('title')
        detail = clean_data.get('detail')
        teacher_name = clean_data.get('teacher_name')
        study_year = clean_data.get('study_year')
        chk = 0
        if title == None or detail == '' or study_year == '' or teacher_name == '' or teacher_name.isdigit():
            raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for i in bad_word:
            if i in title or i in detail or i in teacher_name:
                raise forms.ValidationError('กรุณาไม่ใช่คำหยาบ และ กรอกข้อมูลให้ถูกต้อง')

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        exclude = ['id', 'review', 'user_id']

    def clean(self):
        clean_data = super().clean()
        title = clean_data.get('review')
        detail = clean_data.get('detail')
        if title == '' or detail == '':
            raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')

class ReportForm(forms.ModelForm):
    class Meta:
        model = ReportReview
        fields = ['detail_review']
