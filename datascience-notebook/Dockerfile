#
# To build this docker image:
#
#     podman build --tag mhwombat/data-mining:1.17-datascience-notebook .
#
# To publish the image:
#
#     podman push localhost/mhwombat/data-mining:1.17-datascience-notebook docker.io/mhwombat/data-mining:1.17-datascience-notebook
#
FROM docker.io/jupyter/datascience-notebook:python-3.8.6
MAINTAINER amy@nualeargais.ie

USER root

RUN apt-get update && apt-get --assume-yes install \
            graphviz \
            firefox

USER $NB_UID

RUN python -m pip install geopy
RUN python -m pip install graphviz
RUN python -m pip install plotly
RUN python -m pip install statsmodels
RUN python -m pip install tslearn
RUN python -m pip install xgboost
RUN python -m pip install tensorflow
RUN python -m pip install keras
RUN python -m pip install interpret
