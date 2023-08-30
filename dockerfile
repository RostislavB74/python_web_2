# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
# FROM python:3.10

# # Встановимо змінну середовища
# #ENV APP_HOME /personal_assistant
# # Встановимо робочу директорію всередині контейнера
# WORKDIR /Usr/python_web_2

# # Скопіюємо інші файли в робочу директорію контейнера
# COPY . .

# # Встановимо залежності всередині контейнера
# RUN pip install -r requirements.txt
# RUN pipenv run python setup1.py develop

# # Позначимо порт, де працює застосунок всередині контейнера
# EXPOSE 5000

# # Запустимо наш застосунок всередині контейнера
# ENTRYPOINT ["personal_assistant"]
# FROM python:3.10

# RUN pip3 install pipenv

# WORKDIR /Users/admin/Python/python_web_2/
# ADD Pipfile.lock Pipfile /Usr/python_web_2/
# COPY Pipfile ./
# COPY Pipfile.lock ./


# RUN pipenv run python3 setup1.py develop
# #RUN personal_assistant
# COPY . .
# CMD ["personal_assistant"]

FROM python:3.10

# Install Pipenv
RUN pip3 install pipenv

# Set the working directory
WORKDIR /app

# Copy Pipfiles for dependency installation
COPY Pipfile Pipfile.lock /app/

# Install dependencies using Pipenv
#RUN pipenv install --deploy --ignore-pipfile

# Copy the rest of the application code
COPY . /app

# Set the default command to run your script
CMD ["pipenv", "run", "python3", "setup1.py", "develop"]
#RUN personal_assistant