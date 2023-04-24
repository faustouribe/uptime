# uptime

Solution:

1.- Run 
        ```npm run build-dist-and-restart``` 
which builds the dist(if dist folder is already present you have to delete it first and run this command).

2.- Stop the running process(CTRL+C) after the dist folder is created with all the files or when the console shows Listening on PORT 3001

3.- Next Comment from line 24 to the end in the docker/dockerfile (why? because I don't have permission to upload to github the artifacts) and save it.

4.- Update 
    ```build-docker-debian``` 
command in package.json to 
    ``` "build-docker-debian": "node ./extra/env2arg.js docker buildx build -f docker/dockerfile --platform linux/amd64 -t kuma/uptime-kuma . --load"```
(this is for windows for others you have to update the platform tag).

5.- Now run 
    ```npm run build-docker-debian``` 
it creates the docker image with our changes.

6.- Next you can run the command that creates the container 
    ```docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma kuma/uptime-kuma```
