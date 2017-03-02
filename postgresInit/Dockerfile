FROM postgres:9.6
ENV POSTGRES_PASSWORD=password-postgres  POSTGRES_USER=user-postgres POSTGRES_DB=django-project-name
#COPY ./init-user-db.sh /docker-entrypoint-initdb.d/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["postgres", "psql", "-h", "postgres", "-U", "postgres"]
 
