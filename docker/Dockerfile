FROM mambaorg/micromamba:0.8.2

RUN micromamba install -y -n base -c conda-forge \
       dill \
       gspread \
       hdf5 \
       ipywidgets \
       jupyterlab=3.0.10 \
       matplotlib \
       oauth2client \
       pandas \
       pytables \
       pyyaml \
       rdkit \
       scikit-learn \
       sqlalchemy \
       tabulate

RUN pip install dataset

ENV METATLAS_LOCAL="True"

EXPOSE 8888

CMD ["/opt/conda/bin/jupyter", "nbclassic", "--ip=0.0.0.0", "--allow-root", "--ServerApp.token=''",  "--ServerApp.root_dir=/app/notebooks"]
