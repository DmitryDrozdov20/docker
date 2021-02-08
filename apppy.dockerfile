FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr requirements.txt
RUN cp app.py /opt/webapp
EXPOSE 5000
CMD ["app.py", "run"]