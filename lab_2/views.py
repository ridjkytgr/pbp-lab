from django.shortcuts import render
from lab_2.models import Note

# Create your views here.


def index(request):
    Notes = Note.objects.all()
    response = {'notes': Notes}
    return render(request, 'lab2.html', response)
