from django.shortcuts import render, HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json
from django.core.paginator import EmptyPage, PageNotAnInteger
from teleg_bot_app.lib.currency_bot import CurrencyBot
from teleg_bot_app.lib.custom_paginator import CustomPaginator
from .models import User

TOKEN = "1300789765:AAE7cCAgJZ8JhXZmJ2Q5_20-oS-GijY96wY"


def index(request):
    user_list = User.objects.all().order_by('-registered_at')
    users_per_page = 20  # Количество пользователей на одной странице
    pagination_pages_range = 2  # количество страниц справа и слева относительно текущей
    page_num = request.GET.get('page')
    paginator = CustomPaginator(user_list, users_per_page, pagination_pages_range)
    try:
        users = paginator.page(page_num)
    except PageNotAnInteger:
        users = paginator.page(1)
        page_num = 1
    except EmptyPage:
        users = paginator.page(paginator.num_pages)
        page_num = paginator.num_pages

    pagination_list = paginator.pagination_list(int(page_num))
    return render(request,
                  'admin.html',
                  context={'users': users,
                           'pagination_list': pagination_list})


@csrf_exempt
def bot(request):
    telegram_bot = CurrencyBot(TOKEN)
    if request.method == 'POST':
        request_body = json.loads(request.body)
        print(request_body)
        try:
            text = request_body["message"]["text"]
            user_data = request_body["message"]["from"]
        except KeyError:
            try:
                text = request_body["callback_query"]["data"]
                user_data = request_body["callback_query"]["from"]
            except KeyError:
                return HttpResponse(status=204)
        telegram_bot.run_command(text, user_data)
        # if command in telegram_bot.commands_dict:
        #     telegram_bot.commands_dict[command](user_data)
        # else:
        #     telegram_bot.command_not_found(user_data)

        return HttpResponse(status=204)

    return HttpResponse(status=400)
