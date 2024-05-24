FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY model.pkl model.pkl
COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]