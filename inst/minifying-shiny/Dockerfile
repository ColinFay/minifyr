FROM rocker/shiny-verse:3.6.3

RUN apt-get -y --allow-unauthenticated install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x   | bash -
RUN apt-get -y --allow-unauthenticated install nodejs

RUN Rscript -e 'remotes::install_github("ThinkR-open/prenomsapp")'
RUN Rscript -e 'remotes::install_github("ThinkR-open/prenoms")'
RUN Rscript -e 'remotes::install_cran("furrr")'
ADD . /

RUN Rscript -e 'remotes::install_github("colinfay/minifyr")'

RUN Rscript /minify.r

CMD Rscript -e 'options("shiny.port"=80,shiny.host="0.0.0.0");prenomsapp::run_app()'
