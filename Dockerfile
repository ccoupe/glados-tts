FROM  nvcr.io/nvidia/pytorch:22.07-py3
#
COPY ./requirements.txt /workspace/requirements.txt
#COPY ../glados-tts /workspace/glados-tts

RUN apt-get update && \
apt-get -y install espeak && \
mkdir -p workspace/glados-tts/audio && \
pip install -r requirements.txt

#COPY ./project /workspace/project
#ENTRYPOINT ["python"]
#CMD ["/workspace/project/train.py"] 
