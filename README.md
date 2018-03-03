# Machine learning using docker

When you are learning machine learning, you will install all kind of libraries on your computer, and if you are on mac or linux like me, you run in dependency issues :scream: :scream: :-1: But you don't have to worry any more, :muscle: docker to our rescue.
Using [docker]() you can run all your M.L scripts and libraries inside a container leaving your current workspace clean and :sparkles:. Let's see how you can setup your machine learning enviroment at least without pulling off your hair.:smiley:
Ensure you have docker installed on your computer.
***

## Pull the anaconda3 image from docker hub

To get the image from which to build the container you will need [anaconda](), to do that simply run the command below.
```bash
docker pull continuumio/anaconda3:latest
```

## Running your container

You can run the container simply by docker run, then have to configure your container everytime you start it. To do that simply run this command.

```bash
docker run -i -t -p 8888:8888 --name=anaconda continuumio
/anaconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"

```

To automate this process, we will use docker-compose. I have created the ```docker-compose.yml``` and ```Dockerfile``` to do all that for you, simply run

```bash
docker-compose build .
```
The default password is ```root```
