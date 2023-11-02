FROM python:3.9-alpine
LABEL maintainer="handuy1992"

WORKDIR /app

COPY ./techtrends/. .

RUN pip install -r requirements.txt
RUN python init_db.py

CMD [ "python", "app.py" ]
