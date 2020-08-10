from django.db import models


class User(models.Model):
    telegram_id = models.CharField(max_length=10)
    username = models.CharField(max_length=32)
    first_name = models.CharField(max_length=64)
    last_name = models.CharField(max_length=64)
    registered_at = models.DateTimeField(auto_now_add=True)
    subscribed = models.BooleanField(default=False)
