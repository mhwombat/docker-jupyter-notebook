#
# To build this docker image:
#
#     docker build -t mhwombat/data-mining:1.0-datascience-notebook-explainer-dashboard .
#
# To publish the image:
#
#     docker push mhwombat/data-mining:1.0-datascience-notebook-explainer-dashboard
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

#RUN python -m pip install azureml-interpret
#RUN python -m pip install sklearn-pandas
#RUN python -m pip install flask
#RUN python -m pip install lightgbm

RUN python -m pip install interpret

RUN python -m pip install explainerdashboard
#COPY generate_dashboard.py ./
#COPY run_dashboard.py ./
#RUN python generate_dashboard.py
EXPOSE 8050
EXPOSE 9050
EXPOSE 7001
#CMD ["python", "./run_dashboard.py"]
