FROM rocker/shiny

# Install Packages
RUN R -e 'install.packages(c("shiny"))'

# Copy app
COPY ./app/* /srv/shiny-server/

# Run app
CMD ["/usr/bin/shiny-server"]