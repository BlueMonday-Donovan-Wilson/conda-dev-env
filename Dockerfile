FROM continuumio/anaconda3:latest

RUN conda install -y -c conda-forge mlflow && \
    conda install -y -c conda-forge nodejs && \
    conda install -y -c conda-forge jupyterlab && \
    conda install -y -c conda-forge jupyterlab-git && \
    conda update -y --all 


WORKDIR /root

COPY create-eda.sh .
COPY eda.yml .

RUN chmod +x create-eda.sh && mkdir ~/projects`

CMD [ "/bin/bash" ]
