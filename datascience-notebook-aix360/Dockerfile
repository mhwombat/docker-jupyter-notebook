#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:1.0-datascience-notebook-aix360 .
#
# To publish the image:
#
#     docker push mhwombat/data-mining:1.0-datascience-notebook-aix360
#
FROM jupyter/datascience-notebook:python-3.7.6
MAINTAINER amy@nualeargais.ie

USER root

RUN apt-get update && apt-get --assume-yes install \
            graphviz \
            zip

USER $NB_UID

#
# AIX 360 (includes tensorflow, xgboost)
#
COPY AIX360-master.zip .
RUN unzip AIX360-master.zip
WORKDIR AIX360-master
RUN python -m pip install .
WORKDIR ..

RUN python -m pip install geopy
RUN python -m pip install graphviz
RUN python -m pip install plotly
RUN python -m pip install statsmodels
RUN python -m pip install tslearn
RUN python -m pip install pdpbox

#RUN python -m pip install azureml-interpret
#RUN python -m pip install sklearn-pandas
#RUN python -m pip install flask
#RUN python -m pip install lightgbm

RUN python -m pip install interpret

#
# Bamboolib
#
RUN python -m pip install --upgrade bamboolib --user
RUN python -m bamboolib install_nbextensions
RUN python -m bamboolib install_labextensions

