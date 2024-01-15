FROM python:3.9-slim-bullseye
COPY . . 
RUN pip install -r requirements.txt 
CMD ["python3", "app.py"]