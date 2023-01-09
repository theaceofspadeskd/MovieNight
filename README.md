# MovieNight

An app for planning movie sharing on a schedule that receives a list of movies via the OMDb service API. Asynchronous operation and sending of notifications supported by using Celery and Redis.

Run in Docker:

1. Download this project
 ```
 git clone https://github.com/theaceofspadeskd/MovieNight.git
 ```
2. Execute command from root directory of project, where docker-compose.yml located
 ```
 docker-compose build
 ```
3. Run   
 ```
 docker-compose up
 ```   

Installation

1. Download this project
    ```
    git clone https://github.com/theaceofspadeskd/MovieNight.git
    ```
2. Install all necessary dependencies
    ```
    pip install -r requirements.txt
    ```
3. Make migrations
    ```
    python manage.py makemigrations
    ```
4. Migrate
    ```
    python manage.py migrate
    ```
5. Start Redis server, input ```ping``` in CLI, receive ```PONG```, if server successfully running

6. Run Celery
    ```
    celery -A movienight  worker -l INFO
    ```
