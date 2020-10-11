import requests


class CurrencyBot:
    def __init__(self, token):
        self.commands_dict = {
            "/currency": self.currency,
            "/help": self.help,
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

    def run_command(self, text: str, user_data: dict):
        words_list = text.partition(" ")
        command = words_list[0]
        if not command or not (command in self.commands_dict):
            self.command_not_found(user_data)
            return

        parameters = words_list[2]
        result = self.commands_dict[command](parameters)
        if result:
            self.send_message(result, user_data['id'])
        else:
            self.command_not_found(user_data=user_data)

    def currency(self, parameters: str):
        values = parameters.partition("/")
        first_value = values[0]
        second_value = values[2]
        all_values_currency = requests.get(url="https://api.exchangeratesapi.io/latest").json()["rates"]
        all_values_currency['EUR'] = 1
        try:
            rate = round(all_values_currency[first_value] / all_values_currency[second_value], 2)
        except KeyError:
            self.command_not_found
            return False

        text = "Текущий курс: "
        return " ".join([text, str(rate)])

    def help(self, parameters: str):
        print("HELP")
        all_values_currency = requests.get(url="https://api.exchangeratesapi.io/latest").json()["rates"]
        all_values_currency['EUR'] = 1
        all_values_list = []
        for key in all_values_currency:
            all_values_list.append(key)

        result = "Список доступных валют:\n"
        for value in all_values_list:
            result += value + "\n"

        return result

    def command_not_found(self, user_data):
        try:
            user_id = user_data["id"]
        except KeyError:
            return
        self.send_message("Неизвестная команда", user_id)
