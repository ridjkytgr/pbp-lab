from django.shortcuts import render
from lab_2.models import Note
from django.http.response import HttpResponse
from django.core import serializers


# Create your views here.


def index(request):
    Notes = Note.objects.all()
    response = {'notes': Notes}
    return render(request, 'lab2.html', response)


def xml(request):
    data = serializers.serialize('xml', Note.objects.all())
    return HttpResponse(data, content_type="application/xml")
