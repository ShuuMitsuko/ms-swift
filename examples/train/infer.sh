# If it's full parameter training, use `--model xxx` instead of `--adapters xxx`.
# If you are using the validation set for inference, add the parameter `--load_data_args true`.
# 把 --model 后面换成自己训的checkpoint
CUDA_VISIBLE_DEVICES=0 \
swift infer \
    --model output/v4-20250323-132337/checkpoint-6245 \
    --max_new_tokens 256 \
    --temperature 0.7 \
    --top_p 0.9 \
    --repetition_penalty 1.2 \
    --stream true
