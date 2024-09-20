FROM python:3.11.10-alpine3.20

WORKDIR /home

COPY . /home

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

EXPOSE 8000


CMD ["python", "app.py"
