ARG IPEX_LLM_VERSION=2.1.0-SNAPSHOT

FROM intelanalytics/ipex-llm-xpu:$IPEX_LLM_VERSION

WORKDIR /workspace 

RUN git clone https://github.com/OpenAccess-AI-Collective/axolotl.git

WORKDIR /workspace/axolotl

RUN git checkout v0.4.0 && \
    rm requirements.txt

COPY ./finetune.py /workspace/axolotl/finetune.py
COPY ./requirements.txt /workspace/axolotl/requirements.txt

# Install requirements
RUN apt remove -y python3-blinker && \
    pip install -e . && \
    pip install transformers==4.36.0

# # So we can test the Docker image
# RUN pip install pytest && \
#     # fix so that git fetch/pull from remote works
#     git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*" && \
#     git config --get remote.origin.fetch && \
#     # helper for huggingface-login cli
#     git config --global credential.helper store

ENTRYPOINT [ "accelerate" ]

CMD [ "config" ]

# ENTRYPOINT [ "accelerate", "launch", "finetune.py" ]

# CMD [ "lora.yml" ]
