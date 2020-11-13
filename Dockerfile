#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:1.06-datascience-notebook .
#
FROM jupyter/datascience-notebook:python-3.8.6
MAINTAINER amy@nualeargais.ie

USER root

RUN apt-get update && apt-get --assume-yes install \
            graphviz

USER $NB_UID

RUN python -m pip install featureimpact
RUN python -m pip install geopy
RUN python -m pip install graphviz
RUN python -m pip install jupyterlab "ipywidgets>=7.5"
RUN python -m pip install keras
RUN python -m pip install plotly
RUN python -m pip install shap
RUN python -m pip install statsmodels
RUN python -m pip install tensorflow
RUN python -m pip install tslearn
RUN python -m pip install xgboost

RUN jupyter labextension install jupyterlab-plotly@4.7.1
