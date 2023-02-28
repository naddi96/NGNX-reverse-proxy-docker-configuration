FROM python:3.7
WORKDIR /myapp
CMD ["python3", "-m","http.server"]