# Complete Banking application backend with Golang

1. This project makes use of docker for postgres without installing it locally, the first problem you can encounter when you clone this repo is that after shuting down your system you might need to remove the previous instance of the postgres db implementation before running the command 
    ```bash
    make run 

2. Else the command will give an error like this
    ```bash
    2024/10/10 18:42:19 dial tcp 127.0.0.1:5432: connect: connection refused
    make: *** [Makefile:5: run] Error 1

3. Obviously the date and time will be based out of you local system. To avoid this from happening you first need to do a command
    ```bash
    docker ps -a
    
4. This will give all the recent container details that were running on your system locally

5. Now Identify your DB container based on the name, in my case it was some-postgres(NAME) and copy the CONTAINER_ID of the container and remove the container by doing 
    ```bash 
    docker rm <CONTAINER_ID>

6. Now run the command that you did earlier 
    ```bash
    docker run --name <DB_NAME> -e POSTGRES_PASSWORD=<YOUR_DB_PASSWORD> -p 5432:5432 -d postgres

7. Run 
    ```bash
    make run

8. Voila your probelm should be solved !!