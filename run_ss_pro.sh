#!/bin/bash
set -e

# English

# models=( "uground" "osatlas-7b" "showui" "qwen2vl" "cogagent" "gpt4o" )
models=( "gpt-4o-mini" )

for model in "${models[@]}"
do
    python eval_screenspot_pro.py  \
        --model_type ${model}  \
        --screenspot_imgs "./data/ScreenSpot-Pro/images"  \
        --screenspot_test "./data/ScreenSpot-Pro/annotations"  \
        --task "all" \
        --language "en" \
        --gt_type "positive" \
        --log_path "./results/${model}.json" \
        --inst_style "instruction"

done

