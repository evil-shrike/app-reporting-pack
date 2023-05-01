FROM google/cloud-sdk:alpine
RUN apk add --update --no-cache py3-pip bash tzdata sudo nano curl
EXPOSE 80/tcp
WORKDIR /app

# Install Python
RUN python3 -m ensurepip && \
    pip install --upgrade pip

CMD ["python3", "-m", "http.server", "80"]