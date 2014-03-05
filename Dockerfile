FROM crosbymichael/python

RUN pip install butterfly
RUN echo "root\nroot\n" | passwd root

EXPOSE 9191
ENTRYPOINT ["butterfly.server.py"]
CMD ["--port=9191", "--host=0.0.0.0"]
