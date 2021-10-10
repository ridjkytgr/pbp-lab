from django.shortcuts import redirect, render
from lab_2.models import Note
from lab_4.forms import NoteForm

# Create your views here.


def index(request):
    Notes = Note.objects.all()
    response = {'notes': Notes}
    return render(request, 'lab4_index.html', response)


def add_note(request):
    context = {}

    form = NoteForm(request.POST or None)

    if form.is_valid():
        # Save it to the models
        form.save()

        # Redirect to the lab-3 page
        if request.method == 'POST':
            return redirect('/lab-4/')

    context['form'] = form
    return render(request, "lab4_form.html", context)


def note_list(request):
    Notes = Note.objects.all()
    response = {'notes': Notes}
    return render(request, 'lab4_note_list.html', response)
