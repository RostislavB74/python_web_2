FROM python:3.10

# Install Pipenv
RUN pip3 install pipenv

# Set the working directory
WORKDIR /app

# Copy Pipfiles for dependency installation
COPY Pipfile Pipfile.lock /app/

# Install dependencies using Pipenv
RUN pipenv install --deploy --ignore-pipfile

# Copy the rest of the application code
COPY . /app

# Install your package using setup1.py
RUN pipenv run python3 setup1.py develop

# Start an interactive shell when the container runs
#CMD ["pipenv", "shell"]
#CMD ["pipenv", "run", "personal_assistant"]