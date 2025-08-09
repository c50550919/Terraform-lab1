FROM python:3.9-slim

WORKDIR /app

COPY Terraform-configs/app.py .

RUN pip install flask

EXPOSE 8080

CMD ["python", "app.py"]