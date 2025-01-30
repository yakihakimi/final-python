FROM python:3.7
WORKDIR /app 

COPY Pipfile Pipfile.lock requirements.txt ./
RUN pip install pipenv
RUN pipenv lock --requirements
RUN pipenv install --deploy --ignore-pipfile
COPY . . 

EXPOSE 5000
CMD ["pipenv", "run", "python", "app.py"] 
