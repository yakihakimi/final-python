FROM python:3.8
WORKDIR /app 
RUN pip install pipenv 
RUN pipenv shell
RUN pipenv install
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
