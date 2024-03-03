FROM python:3.9-slim-buster 

WORKDIR /app

COPY  requirements.txt .
#install the required python packages
RUN pip install --no-cache-dir -r requirements.txt
# copy the application code to the dirctory
COPY . .
# set the environment variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0
# Expose the port on which the flask app will run
EXPOSE 5000
# start the flask app when the container will run
CMD ["flask" , "run"]