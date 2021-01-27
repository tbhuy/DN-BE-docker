FROM python:3.8
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update \
    && apt-get install -y --no-install-recommends git
RUN git clone https://github.com/tbhuy/dn-backend
RUN pip install django
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
WORKDIR dn-backend
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]




