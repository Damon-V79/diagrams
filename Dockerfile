# first stage
FROM python:3.8 AS builder
COPY requirements.txt .

# install dependencies to the local user directory (eg. /root/.local)
RUN pip install --user -r requirements.txt && find /root/.local/lib/ -type d -exec chmod 755 {} \; && find /root/.local/lib/ -type f -exec chmod 644 {} \;

# second unnamed stage
FROM python:3.8-slim
USER root

WORKDIR /code

RUN apt-get update && apt-get install -y --no-install-recommends graphviz

# copy only the dependencies installation from the 1st stage image
COPY --from=builder /root/.local /usr/local


USER 1001:0
# command to run on container start
ENTRYPOINT [ "python" ]
