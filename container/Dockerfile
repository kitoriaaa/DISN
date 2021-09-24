FROM tensorflow/tensorflow:1.13.2-gpu-py3-jupyter

WORKDIR /usr/workspace

RUN apt update
RUN apt install -y make \
    libgl1-mesa-dev

COPY ./requirements.txt .
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
