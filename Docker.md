## Dockerfiles and command lines

There are two Dockerfiles, dockers/Dockerfile.dev and dockers/Dockerfile.prod

### Development 
For developing, use the smallest build image build possible. 
`docker build -f dockers/Dockerfile.dev -t ccoupe/glados:1.0 .`


To run the glados-tts server in development, You must specify the -v mount options. 

`$ docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -p8124:8124 -v ${HOME}/Projects/glados-tts:/workspace/glados-tts -it --rm ccoupe/glados:1.0`

### Production (so to speak)

To build the image:

`$ docker build -f dockers/Dockerfile.prod -t ccoupe/glados:1.0 .`

To start the image:

`$ docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -p8124:8124  -it  -d --restart unless-stopped --name=glados-tts ccoupe/glados:1.0` 


