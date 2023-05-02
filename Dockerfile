
FROM python:3.10-slim-bullseye
WORKDIR /app

 
COPY model.pkl .
COPY app.py .
COPY requirements.txt .

 
RUN pip install --upgrade pip
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

 

EXPOSE 5000

 

ENTRYPOINT ["python"]

 

CMD ["app.py", "--host=0.0.0.0"]
