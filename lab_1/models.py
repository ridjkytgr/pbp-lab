from django.db import models


class Friend(models.Model):
    name = models.CharField(max_length=30)
    npm = models.CharField(max_length=10)
    dob = models.DateField()
