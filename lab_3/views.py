from django.shortcuts import redirect, render
from lab_1.models import Friend
from lab_3.forms import FriendForm
from django.contrib.auth.decorators import login_required

# Create your views here.


@login_required(login_url='/admin/login/')
def index(request):
    friends = Friend.objects.all()
    response = {'friends': friends}
    return render(request, 'lab3_index.html', response)


@login_required(login_url='/admin/login/')
def add_friend(request):
    context = {}

    form = FriendForm(request.POST or None)

    if form.is_valid():
        # Save it to the models
        form.save()

        # Redirect to the lab-3 page
        if request.method == 'POST':
            return redirect('/lab-3/')

    context['form'] = form
    return render(request, "lab3_form.html", context)
