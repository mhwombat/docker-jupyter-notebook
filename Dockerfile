#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:1.05-datascience-notebook .
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
RUN python -m pip install xgboost==1.0.0 # Avoid SHAP issue #1215
RUN python -m pip install shap
RUN python -m pip install pmdarima
RUN python -m pip install graphviz
RUN python -m pip install pyod
RUN python -m pip install tensorflow
RUN python -m pip install keras
RUN python -m pip install featureimpact
RUN jupyter labextension install jupyterlab-plotly@4.7.1

# Bamboo
RUN python -m pip install --upgrade bamboolib --user
RUN python -m bamboolib install_nbextensions
RUN python -m bamboolib install_labextensions

# InterpretML
RUN python -m pip install interpret
RUN python -m pip install interpret-community
RUN python -m pip install torch==1.3.0
RUN python -m pip install torchvision==0.4.1
RUN python -m pip install lightgbm
RUN python -m pip install lime
RUN python -m pip install dash
