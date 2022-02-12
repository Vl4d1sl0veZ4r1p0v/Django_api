FROM python:3.10

WORKDIR /app

COPY Pipfile /app
COPY Makefile /app

RUN pip install pipenv
RUN pipenv install

# Now copy in our code, and run it
COPY src/ /app
EXPOSE 8000
CMD ["/bin/bash"]