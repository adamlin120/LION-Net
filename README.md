LION-Net: LIghtweight ONtology-independent Networks for Schema-Guided Dialogue State Generation
===
This repo contains source code of our DSTC8-trackIV 2020 paper "*LION-Net: LIghtweight ONtology-independent Networks for Schema-Guided Dialogue State Generation*"
>https://drive.google.com/file/d/1d0S_i0eLYUBpTgs_AoyU0L106iI5WB3w/view?usp=sharing


# Requirements
* Python  3.8
```bash
pip install -r requirements.txt
python -m spacy download en
```

# Dataset & Pretrained Embeddings

The dataset we used is Schema-Guided Dialogue State Tracking Dataset provided by Google.
> https://github.com/google-research-datasets/dstc8-schema-guided-dialogue

Download the dataset first and remember to download the GloVe word vectors.
> https://nlp.stanford.edu/projects/glove/

```bash
wget https://ytlin.s3-ap-northeast-1.amazonaws.com/data/dstc8-schema-guided-dialogue-master.zip
unzip dstc8-schema-guided-dialogue-master.zip
wget http://nlp.stanford.edu/data/wordvecs/glove.840B.300d.zip
unzip glove.840B.300d.zip
```


# How to run
First, you need to make a copy of config.yaml.example and change the name to CONFIG_PATH
Then you can change the parameters in config.yaml and do the training.

## Preprocessing
```bash
python3 extract_schema.py --config [CONFIG_PATH]
python3 preprocess.py --config [CONFIG_PATH]
```

## Training
```bash
python3 train.py --config [CONFIG_PATH]
```

## Testing
```bash
python3 test.py --config [CONFIG_PATH]
```


### Citation   
Please use the following bibtex to cite this paper, thank you!
```
@Article {LION-Net,
author = "Kai-Ling Lo Ting-Wei Lu Tzu-teng Weng I-Hsuan Chen Yun-Nung Chen",
title = "LION-Net: LIghtweight ONtology-independent Networks for Schema-Guided Dialogue State Generation",
journal = "DSTC8-track IV workshop paper",
year = "2020"
}
```   

