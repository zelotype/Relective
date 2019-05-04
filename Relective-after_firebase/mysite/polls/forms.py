from distutils.command import clean

from django import forms

from polls.models import User, Course_Major, Review, Comment


class ReviewForm(forms.ModelForm):
    title = forms.CharField(required=False)
    detail = forms.CharField(required=False)
    cover = forms.ImageField(required=False)
    class Meta:
        model = Review
        fields = ['title','detail','annonymous','cover']
        widgets = {
            'title': forms.TextInput(attrs={'class': 'title_input'}),
        }

    def clean(self):
        bad_word = ['เหี้ย', 'สัส']
        clean_data = super().clean()
        title = clean_data.get('title')
        detail = clean_data.get('detail')
        chk = 0
        if title == None or detail == '':
            raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for j in title:
            if j.isalpha() == False and chk ==0:
                raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for j in detail:
            if j.isalpha() == False and chk ==0:
                raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for i in bad_word:
            if i in title or i in detail and chk ==0:
                raise forms.ValidationError('กรุณาไม่ใช่คำหยาบ')


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
