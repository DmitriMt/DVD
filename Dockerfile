FROM jupyter/base-notebook:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    r-base \
    r-base-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN pip install pandas pyreadstat scikit-learn statsmodels openpyxl jupyter rpy2

RUN R -e "install.packages('IRkernel', repos='http://cran.us.r-project.org')" && \
    R -e "IRkernel::installspec()"

WORKDIR /home/jovyan/work
COPY . /home/jovyan/work

EXPOSE 8888

CMD ["start-notebook.sh"]
