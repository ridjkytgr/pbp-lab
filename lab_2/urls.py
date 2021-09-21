from django.urls import path
from .views import index, json, xml

urlpatterns = [
    path('', index, name='index'),
    path('xml', xml, name='XML'),
    path('json', json, name='json')
]
