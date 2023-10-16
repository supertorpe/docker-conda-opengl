FROM continuumio/anaconda3:2023.09-0

RUN apt update && apt -y install mesa-utils x11vnc xvfb jwm sudo
RUN conda install jupyter pyopengl freeglut -y --quiet &&\
    mkdir -p /opt/notebooks
COPY startup.sh /app/startup.sh
RUN chmod -R 777 /app
WORKDIR /app

ENTRYPOINT ["/app/startup.sh"]
