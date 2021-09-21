from django.db import models

# Create your models here.


class Note(models.Model):
    message_to = models.CharField(max_length=30)
    message_from = models.CharField(max_length=30)
    message_title = models.CharField(max_length=15)
    message_content = models.TextField()
