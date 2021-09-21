from django.urls import path
from .views import index, xml

urlpatterns = [
    path('', index, name='index'),
    path('xml', xml, name='XML')
]
