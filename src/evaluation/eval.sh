#!/bin/bash
data_dir=$1

for epoch in $(seq -w 1 60)
do
  python3 evaluate.py \
    --dstc8_data_dir "${data_dir}" \
    --prediction_dir "${data_dir}/prediction/${epoch}/" \
    --eval_set "test" \
    --output_metric_file "${data_dir}/metric_test_${epoch}.json"
done
