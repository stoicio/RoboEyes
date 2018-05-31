FROM pytorch:latest

COPY environment-gpu.yml ./environment.yml
RUN conda env create --file=environment.yml --name cvnd -v -v


# cleanup tarballs and downloaded package files
RUN conda clean -tp -y

# Set up our notebook config.
COPY jupyter_notebook_config.py /root/.jupyter/

# Jupyter
EXPOSE 8888

# workdir
WORKDIR "/usr/src/app"
ENTRYPOINT ["bash"]
