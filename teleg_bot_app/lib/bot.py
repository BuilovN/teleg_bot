import requests
from teleg_bot_app.models import User
from django.core.exceptions import ObjectDoesNotExist
import random
import string

class Bot:
    def __init__(self, token):

        self.commands_dict = {
            "/start": self.start,
            "/end": self.end,
            "/subscribe": self.subscribe
        }
        self.token = token

    def send_message(self, text, chat_id, reply_markup={}):
        url = f"https://api.telegram.org/bot{self.token}/sendMessage"
        data = {
            "chat_id": chat_id,
            "text": text,
            "reply_markup": reply_markup
        }
        requests.post(url, json=data)

    def start(self, user_data):
        try:
            user_id = user_data["id"]
            username = user_data["username"]
            first_name = user_data["first_name"]
            last_name = user_data["last_name"]
        except KeyError:
            return

        reply_markup = {
            "inline_keyboard": [[{
                "text": "Подписаться на новости",
                "callback_data": "/subscribe"}]]
        }

        try:
            user = User.objects.get(telegram_id=user_id)
        except ObjectDoesNotExist:
            new_user = User(telegram_id=user_id, username=username, first_name=first_name, last_name=last_name)
            new_user.save()
            text = f"Привет {username}! Теперь ты зарегистрирован в нашем боте! Ура! "
        else:
            text = "Ты уже зарегистрирован!"
            if user.subscribed:
                reply_markup = {}

        self.send_message(text, user_id, reply_markup)

    def end(self, user_data):
        try:
            user_id = user_data["id"]
        except KeyError:
            return
        self.send_message("Goodbye, User!", user_id)

    def subscribe(self, user_data):
        try:
            user_id = user_data["id"]
        except KeyError:
            return

        user = User.objects.get(telegram_id=user_id)
        text=""
        if not user.subscribed:
            user.subscribed = True
            user.save()
            text = "Отлично! Теперь все новости будут оперативно поступать в этого бота!"
        else:
            text = "Ты уже подписан!"

        self.send_message(text, user_id)

    def command_not_found(self, user_data):
        try:
            user_id = user_data["id"]
        except KeyError:
            return
        self.send_message("Неизвестная команда", user_id)

