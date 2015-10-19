FROM cpsot/base
MAINTAINER amhauser 
RUN pip install tornado
COPY CPSOTWebsocketServer.py /server.py
RUN chmod 755 /server.py
ENTRYPOINT ["python" , "/server.py"]

EXPOSE 8585