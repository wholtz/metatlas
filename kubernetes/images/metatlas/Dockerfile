FROM mambaorg/micromamba:0.9.2

RUN micromamba install -y -n base -c conda-forge \
	dill \
        gspread \
	hdf5 \
	ipywidgets \
	jupyterlab=3.0.10 \
	matplotlib \
	oauth2client \
	pandas \
	pymysql \
	pytables \
	pyyaml \
	rdkit \
	scikit-learn \
	sqlalchemy \
	tabulate && \
	rm /opt/conda/pkgs/cache/*

RUN pip install dataset  # not availble in conda

ENV METATLAS_LOCAL=True

EXPOSE 8888

RUN mkdir -p /metatlas/notebooks

RUN mkdir -p /src

WORKDIR /metatlas/notebooks

CMD ["/opt/conda/bin/jupyter", "nbclassic", "--ip=0.0.0.0", "--allow-root", "--ServerApp.token=''", "--ServerApp.root_dir=/metatlas/notebooks"]
