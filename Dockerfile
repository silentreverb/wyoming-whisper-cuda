FROM rhasspy/wyoming-whisper:latest

RUN pip3 install --no-cache-dir -U \
        nvidia-cublas-cu11 \
        nvidia-cudnn-cu11

ENV LD_LIBRARY_PATH=`python3 -c 'import os; import nvidia.cublas.lib; import nvidia.cudnn.lib; print(os.path.dirname(nvidia.cublas.lib.__file__) + ":" + os.path.dirname(nvidia.cudnn.lib.__file__))'`
