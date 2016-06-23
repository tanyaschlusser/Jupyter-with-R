# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/r-notebook

# Install system libraries first as root
USER root
# R dependencies that conda can't provide (X, fonts, compilers)
RUN apt-get update && \
    apt-get install -y libxrender1 && \
    apt-get clean

# Switch back to jovyan for all conda and other installs
USER jovyan

# Add Anaconda's "R Essentials"
# (https://www.continuum.io/blog/developer/jupyter-and-conda-r)
RUN conda install -c r --quiet --yes \
    'r-essentials' \
    && conda clean -tipsy \
    && mkdir /home/$NB_USER/work/notebooks

# Add my own R file
COPY jacobs2016data_0.1.tar.gz /home/$NB_USER/work
COPY example-Jupyter-R.ipynb  /home/$NB_USER/work/notebooks

RUN cd /home/$NB_USER/work \
    && R CMD INSTALL jacobs2016data_0.1.tar.gz \
    && rm jacobs2016data_0.1.tar.gz 
