# How to Containerize Your Go Code

My workspace containing code listings from the book ["How to Containerize Your
Go Code"](http://shop.oreilly.com/product/0636920068822.do), by Liz Rice.

The service expects the environment variable `WEB_SERVER_PORT` to be set to the
port that we want our page served on. It defaults to port 8080.

For a container image built using the included `Dockerfile` we can set this
environment variable as well as expose ports from the command line with the
following command:

```shell
docker container run -p 8000:8888 -e WEB_SERVER_PORT=8888 <image-name>:<tag>
```
