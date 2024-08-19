FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN bs create-db
RUN bs populate-db
RUN bs add-user -u admin -p admin
EXPOSE 5000
CMD ["bs", "run"]
