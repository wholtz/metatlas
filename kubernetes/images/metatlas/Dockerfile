FROM mambaorg/micromamba:0.11.3

RUN micromamba install -y -n base -c conda-forge \
	dill \
        gspread \
	hdf5 \
	ipywidgets \
	jupyterlab=3.0.14 \
	matplotlib \
	oauth2client \
	pandas \
	papermill \
	pymysql \
	pytables \
	pyyaml \
	rdkit \
	scikit-learn \
	sqlalchemy \
	tabulate \
	xlsxwriter && \
	rm /opt/conda/pkgs/cache/*

RUN pip install dataset  # not availble in conda

ENV METATLAS_LOCAL=True

EXPOSE 8888

RUN mkdir -p /src

RUN mkdir -p /work

RUN mkdir -p /global/project/projectdirs/metatlas/projects/spectral_libraries

COPY msms_refs_v3.tab /global/project/projectdirs/metatlas/projects/spectral_libraries/

COPY meta_atlas.sqlite3 /work/root_workspace.db

RUN mkdir -p /project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530

COPY *.h5 /project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530/

WORKDIR /work

CMD ["/opt/conda/bin/jupyter", "nbclassic", "--ip=0.0.0.0", "--allow-root", "--ServerApp.token=''", "--ServerApp.root_dir=/"]
