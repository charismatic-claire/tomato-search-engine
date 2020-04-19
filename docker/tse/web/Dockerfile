FROM python
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
ADD run.sh /code/
RUN pip3 install -r requirements.txt
ADD app.tar.gz /code
RUN mv -v /code/app/* /code && rm -fvr /code/app
ADD res.tar.gz /data
RUN mv -v /data/res/* /data/ && rm -fvr /data/res

