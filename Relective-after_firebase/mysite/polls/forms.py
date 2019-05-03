from django import forms

from polls.models import User, Course_Major


class UserModelForm(forms.ModelForm):
    class Meta:
        model = User
        exclude = ['role', 'verify', 'user_auth', 'img_url']
        widgets = {
            'name': forms.TextInput(attrs={'class': 'input_name',
                                           'disabled': True}),
            'email': forms.TextInput(attrs={'class': 'input_email',
                                           'disabled': True}),
        }

        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.fields['major'].queryset = Course_Major.objects.none()
