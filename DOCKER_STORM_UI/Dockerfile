FROM cpsot/storm
MAINTAINER amhauser
RUN /usr/bin/config-supervisord.sh ui

EXPOSE 8080
CMD /usr/bin/start-supervisor.sh