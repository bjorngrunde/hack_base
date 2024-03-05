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
  

## Run the typechecker

1. SSH into the docker container
  
  1. `docker exec -it my_hack_server_container bash`
    
2. Run `hh_client`