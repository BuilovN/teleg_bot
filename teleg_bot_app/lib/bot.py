import requests


class Bot:
    def __init__(self, token):
        self.commands_dict = {
            "/start": self.start,
            "/end": self.end,
        }
        self.token = token

    def send_message(self, text, chat_id):
        url = f"https://api.telegram.org/bot{self.token}/sendMessage?chat_id={chat_id}&text={text}"
        requests.get(url)

    def start(self, chat_id):
        self.send_message("Hello, new User!", chat_id)

    def end(self, chat_id):
        self.send_message("Goodbye, User!", chat_id)

    def command_not_found(self, chat_id):
        self.send_message("Неизвестная команда", chat_id)

