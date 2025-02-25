# Base image from Anaconda that includes Python and Conda
FROM continuumio/anaconda3

# Install Jupyter Notebook and create a working directory for notebooks
RUN /opt/conda/bin/conda install jupyter -y --quiet \
    && mkdir -p /opt/notebooks

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]