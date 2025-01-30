RUN pipenv shell
RUN pipenv install
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
