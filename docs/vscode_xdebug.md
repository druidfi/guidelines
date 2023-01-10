# Xdebug setup for VSCode

1. Install the VSCode extension "PHP Debug by Xdebug" https://marketplace.visualstudio.com/items?itemName=xdebug.php-debug

2. Make sure `XDEBUG_ENABLE: "true"` is defined in the docker-compose.yml as an environment variable for PHP container

3. After changing the docker-compose.yml, you need to run `docker compose up -d` to restart the containers 

4. Run `make fresh` after that

5. Now VSCode has to be configured, open up command palette with `cmd + p` and type `launch.json`

6. Inside the `launch.json`, you'll find an array named `configurations`, add the following object inside the array

    ``` json
    {
          "name": "Listen for Xdebug",
          "type": "php",
          "request": "launch",
          "port": 9003,
          "pathMappings": {
            "/app": "${workspaceFolder}"
          }
        }
    ```
    
    `"/app"` in `"pathMappings"` refers to the application directory IN THE CONTEXT OF A DOCKER CONTAINER. Which means that it might differ from project to project.

7. Finally you can open up the VSCode debugger from activity bar, and select the `Listen for Xdebug` from the dropdown.

There's a chance that you might have to install PHP on your system, so `brew install php`
