FROM ubuntu

RUN apt-get update -y && apt-get install python-psycopg2 libpq-dev python-dev python-pip build-essential  -y && apt-get build-dep python-psycopg2 -y
RUN pip install django 
RUN pip install psycopg2
ADD ./codes /codes  
