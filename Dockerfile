FROM  nvcr.io/nvidia/pytorch:22.07-py3
#
COPY ./glados-tts /workspace/glados-tts

RUN apt-get update && \
apt-get -y install espeak && pwd && \
mkdir -p workspace/glados-tts/audio && \
pip install -r workspace/glados-tts/requirements.txt

#ENTRYPOINT ["python"]
#CMD ["/workspace/glados-tts/engine.py"] 
