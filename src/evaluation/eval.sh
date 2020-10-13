#!/bin/bash
data_dir=$1
python3 evaluate.py \
  --dstc8_data_dir "${data_dir}" \
  --prediction_dir "${data_dir}/prediction/" \
  --eval_set "test" \
  --output_metric_file "${data_dir}/metric_test.json"
