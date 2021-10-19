# Use Docker
Raw initial list and steps to work with Docker in Local and push to remote Repo in DockerHub. The DockerHub repo have to be build before push to it (like github).

1. create Dockerfile
2. FROM base platform (python/node/etc...) 
3. COPY & WORKDIR current folder
4. RUN installation bash commands (npm i / pip install -r requirements.txt / c...)
5. ENTRYPOINT commands to be ran after `docker run [...]`

# - Commands for Local Development
* `docker build -t try_docker .` : build the image or include changes
* `docker run -dp 5000:5000 try_docker` : run image (match internal config with command target port `[port in docker:localhost port]`)

# - Commands for Push to DockerHub Repo
* `docker login -u YOUR-USER-NAME`
* `docker tag [local-project-name] YOUR-USER-NAME/[remote-project-name]`
* `docker push YOUR-USER-NAME/[remote-project-name]`