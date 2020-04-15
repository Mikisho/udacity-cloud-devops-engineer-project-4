FROM python:3.7

WORKDIR /app

COPY . app.py /app/

RUN make install

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["make", "run-app"]
