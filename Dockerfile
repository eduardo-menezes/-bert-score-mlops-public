FROM python:3.7

COPY ./requirements.txt /usr/requirements.txt

WORKDIR /usr

RUN pip3 install -r requirements.txt

#EXPOSE 8501

COPY ./app /usr/app

CMD streamlit run --server.port=8080 --server.enableCORS false app/bert_squad_seo_score.py 