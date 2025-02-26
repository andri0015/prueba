FROM python:3.5
ENV PYTHONUNBUFFERED 1
# dependencis to odbc 17
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
# RUN curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list
# RUN apt-get update
# RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17
# RUN apt-get install -y unixodbc-dev
# # dependencies ssl
# RUN sed -i 's/DEFAULT@SECLEVEL=2/DEFAULT@SECLEVEL=1/g' /etc/ssl/openssl.cnf
WORKDIR /api/
RUN pip install Django
# COPY requirements.txt .
# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt
COPY . .
# EXPOSE 8000
# CMD ["python", "manage.py", "runserver", "0:8000"]
