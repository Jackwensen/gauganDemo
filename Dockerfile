FROM pytorch/pytorch

COPY . /app/
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends git

RUN git clone https://github.com/vacancy/Synchronized-BatchNorm-PyTorch
RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/app/Synchronized-BatchNorm-PyTorch"

ENTRYPOINT [ "python" ]
EXPOSE 6006
CMD [ "flask/app.py" ]
