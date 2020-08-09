from django.shortcuts import render, HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from teleg_bot_app.lib.bot import Bot

TOKEN = "1300789765:AAE7cCAgJZ8JhXZmJ2Q5_20-oS-GijY96wY"


def index(request):
    return HttpResponse('Hello, world')


@csrf_exempt
def bot(request):
    telegram_bot = Bot(TOKEN)
    if request.method == 'POST':
        request_body = json.loads(request.body)
        try:
            command = request_body["message"]["text"]
            chat_id = request_body["message"]["chat"]["id"]
        except KeyError:
            return HttpResponse(status=400)

        if command in telegram_bot.commands_dict:
            telegram_bot.commands_dict[command](chat_id)
        else:
            telegram_bot.command_not_found(chat_id)

    return HttpResponse(status=204)

