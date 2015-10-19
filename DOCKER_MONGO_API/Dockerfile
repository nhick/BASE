FROM java:8
MAINTAINER drome1
ENV HTTP_PROXY=http://proxy-developer.aexp.com:8585
ENV HTTPS_PROXY=http://proxy-developer.aexp.com:8585
ADD start.sh /start.sh
ADD event-repository-api-1.2.5.RELEASE.jar /event-repository-api-1.2.5.RELEASE.jar
CMD ["/start.sh"]