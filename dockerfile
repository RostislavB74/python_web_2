# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.10

# Встановимо змінну середовища
#ENV APP_HOME /personal_assistant
# Встановимо робочу директорію всередині контейнера
WORKDIR /Users/admin/Python/python_web_2

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера
RUN pipenv install -r requirements.txt

# Позначимо порт, де працює застосунок всередині контейнера
EXPOSE 5000

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["pipenv shell", "personal_assisnatn"]