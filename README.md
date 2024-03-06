# Hack_Base

[Documentation](https://docs.hhvm.com/hack/getting-started/getting-started)

## Set up Hack with docker

1. Clone repo [hack_base](https://github.com/bjorngrunde/hack_base/)
  
2. Open the project in a terminal
  
    - For example: `cd /code/projects/hack_base`
    
3. Build the docker image
  
    - `docker build . -t hack_base`
    
4. Start the hack server
  
    - `docker-compose up`
    
5. Go to `localhost:8080` and confirm that `Hello, World!` is returned
  
6. Now you can add your own code to `index.php` and the docker container will automatically load the new content

## Open VsCode attached to remote docker container
This will make it possible to navigate the hhvm library in VS Code and debug in the container.

1. Start the docker container as the steps above
2. Open VS Code
3. Press the ``Open a Remote Window`` button in the left lower corner.
4. Press ``Attach to running container`` and select the running container.
5. With VS Code opened attached to the docker container, install the ``Hack`` extension.

### Debug

1. With VS Code opened attached to the docker container, add a file /var/www/.vscode/launch.json with following content

    ```
    {
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
            {
                "name": "Debug",
                "type": "hhvm",
                "request": "launch",
                "script": "${file}"
            }
        ]
    }
    ```
3. Press ``Run and Debug`` and select the configured launch configuration.

## Run the typechecker

1. SSH into the docker container
  
  1. `docker exec -it my_hack_server_container bash`
    
2. Run `hh_client`