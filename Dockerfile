FROM python:3


RUN pip pip install Django==4.1 django-crispy-forms fontawesomefree==6.5.1 django_extensions==3.2.3 pyodbc==5.0.1 SQLAlchemy==2.0.25 sqlparse==0.4.4 mysqlclient==2.2.4 typing_extensions==4.9.0 tzdata==2023.3 numpy==1.26.4 pytest-django==4.8.0 coverage==7.5.1 freezegun==1.5.1


COPY . .

# Run database migrations
RUN python manage.py migrate

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


