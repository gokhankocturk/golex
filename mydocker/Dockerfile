FROM rocker/r-ver:3.4.4

ARG WHEN

RUN mkdir /mydocker/analysis

RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}')); \
  install.packages('tidystringdist')"

COPY myscript.R /mydocker/analysis/myscript.R

CMD R -e "source('/mydocker/analysis/myscript.R')"