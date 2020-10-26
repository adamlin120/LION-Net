CONFIG="$1"

python extract_schema.py --config "${CONFIG}"
python preprocess.py --config "${CONFIG}"
python train.py --config "${CONFIG}"
