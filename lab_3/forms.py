from django import forms
from lab_1.models import Friend


class DateInput(forms.DateInput):
    input_type = 'date'


class FriendForm(forms.ModelForm):
    class Meta:
        model = Friend
        fields = "__all__"
        widgets = {'dob': DateInput()}
