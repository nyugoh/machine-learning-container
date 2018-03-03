FROM continuumio/anaconda3:latest

MAINTAINER Joe Nyugoh <joenyugoh@gmail.com>

#RUN /opt/conda/bin/conda install jupyter -y --quiet && \
RUN mkdir  /opt/notebooks

EXPOSE 8000

ENTRYPOINT /opt/conda/bin/jupyter notebook --password=root --notebook-dir=/opt/notebooks --ip='*' --port=8000 --no-browser --allow-root
