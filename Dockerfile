#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:0.4-datascience-notebook .
#
FROM jupyter/datascience-notebook:python-3.7.6
MAINTAINER amy@nualeargais.ie

RUN python -m pip install tslearn
RUN python -m pip install geopy
RUN python -m pip install plotly==4.7.1
RUN python -m pip install jupyterlab "ipywidgets>=7.5"
RUN jupyter labextension install jupyterlab-plotly@4.7.1