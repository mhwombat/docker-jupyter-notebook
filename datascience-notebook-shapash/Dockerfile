#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:1.0-datascience-notebook-shapash .
#
# To publish the image:
#
#     docker push mhwombat/data-mining:1.0-datascience-notebook-shapash
#
FROM jupyter/datascience-notebook:python-3.8.6
MAINTAINER amy@nualeargais.ie

USER root

RUN apt-get update && apt-get --assume-yes install \
            graphviz

USER $NB_UID

RUN python -m pip install geopy
RUN python -m pip install graphviz
RUN python -m pip install plotly
RUN python -m pip install statsmodels
RUN python -m pip install tslearn
RUN python -m pip install xgboost
RUN python -m pip install tensorflow

RUN python -m pip install shapash
RUN python -m pip install ipywidgets