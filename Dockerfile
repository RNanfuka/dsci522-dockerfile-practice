FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

USER root

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda create -n dsci522-env --file /tmp/conda-linux-64.lock -y \
    && conda clean -afy

ENV PATH=/opt/conda/envs/dsci522-env/bin:$PATH

USER $NB_UID