FROM python:3.8
WORKDIR /app 
RUN pip install pipenv
RUN pipenv install --deploy --ignore-pipfile  # Install dependencies
EXPOSE 5000  # Expose port 5000
CMD ["pipenv", "run", "python", "app.py"]  # 
