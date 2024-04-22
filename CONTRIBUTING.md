# Contributing

## Cheatsheet

This repository is based on the
[Axolotl Example](https://github.com/intel-analytics/ipex-llm/blob/main/python/llm/example/GPU/LLM-Finetuning/axolotl)
of [IPEX-LLM](https://github.com/intel-analytics/ipex-llm) ~~, modified for the
[main branch](https://github.com/OpenAccess-AI-Collective/axolotl)~~.

###### download models / datasets

```bash
cd models
git clone https://huggingface.co/unsloth/llama-3-8b

cd ../datasets
git clone https://huggingface.co/datasets/mhenrichsen/alpaca_2k_test
```

###### up / down

```bash
sudo docker compose up -d
# podman compose up -d # if you use podman

sudo docker compose down
# podman compose down # if you use podman
```

## Useful links

- https://github.com/NousResearch/axolotl-func-calling/blob/main/docs/debugging.md
- https://openaccess-ai-collective.github.io/axolotl/docs/config.html
