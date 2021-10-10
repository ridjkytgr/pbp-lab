from django.urls import path
from .views import index, add_note, note_list

urlpatterns = [
    path('', index, name='index'),
    path('add-note', add_note, name='add-friend'),
    path('note-list', note_list, name='note-list'),
]
