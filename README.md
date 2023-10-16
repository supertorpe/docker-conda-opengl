# docker-conda-opengl
Docker image to develop OpenGL apps with python + conda

# Build docker image

```
docker build -t conda-opengl-pythondev:0.0.1 .
```

# Run container

```
docker run -it --rm --name conda-opengl-pythondev -e UID=$(id -u) -e GID=$(id -g)  -v ./notebooks:/opt/notebooks -p 8888:8888 -p 5900:5900 conda-opengl-pythondev:0.0.1
```

When Jupyter starts, it outputs the URL to the console:
```
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-27-open.html
    Or copy and paste one of these URLs:
        http://755eda89a397:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43
     or http://127.0.0.1:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43
```

You can access Jupyter with the URL http://127.0.0.1:8888/?token=3202be9db2253aac90014fa0394349cfbee2cf52208d5c43 using the token provided.

Now you can use a VNC client to connect to the port 5900 of the container.
