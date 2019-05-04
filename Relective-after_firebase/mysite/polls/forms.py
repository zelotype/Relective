from distutils.command import clean

from django import forms

from polls.models import User, Course_Major, Review, Comment


class ReviewForm(forms.ModelForm):
    class Meta:
        model = Review
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={'class': 'title_input'}),
        }

    def clean(self):
        clean_data = super().clean()
        title = clean_data.get('title')
        detail = clean_data.get('detail')
        if title == '':
            raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for j in title:
            if j.isalpha() == False:
                raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
        for j in detail:
            if j.isalpha() == False:
                raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        exclude = ['id', 'review', 'user_id']

    def clean(self):
        clean_data = super().clean()
        title = clean_data.get('review')
        if title == '':
            raise forms.ValidationError('กรุณากรอกข้อมูลให้ถูกต้อง')
