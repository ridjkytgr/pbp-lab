from django.urls import path
from .views import add_friend, index

urlpatterns = [
    path('', index, name='index'),
    path('add', add_friend, name='add_friend')
]
