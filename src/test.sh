#!/bin/bash
CONFIG="$1"

for EPOCH in $(seq -w 1 60)
do
  MODEL_PATH="../data/dstc8-schema-guided-dialogue-master/exp/trade/test/ckpt/epoch-${EPOCH}.ckpt"
  python test.py \
    --config "$CONFIG" \
    --model_path "$MODEL_PATH" \
    --epoch "$EPOCH"
done