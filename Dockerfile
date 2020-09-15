#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:0.7-datascience-notebook .
#
FROM jupyter/datascience-notebook:python-3.7.6
MAINTAINER amy@nualeargais.ie

USER root

RUN apt-get update && apt-get --assume-yes install \
            graphviz

USER $NB_UID

RUN python -m pip install tslearn
RUN python -m pip install geopy
RUN python -m pip install plotly==4.7.1
RUN python -m pip install jupyterlab "ipywidgets>=7.5"
RUN python -m pip install xgboost==1.0.0
RUN python -m pip install shap # Avoid SHAP issue #1215
RUN python -m pip install graphviz
RUN jupyter labextension install jupyterlab-plotly@4.7.1

# Bamboo
RUN python -m pip install --upgrade bamboolib --user
RUN python -m bamboolib install_nbextensions
RUN python -m bamboolib install_labextensions