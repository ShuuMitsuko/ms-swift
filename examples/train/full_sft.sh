# 22GB
CUDA_VISIBLE_DEVICES=0 \
swift sft \
    --model /workspace/zhujiao-jch/nlpClass/Qwen2.5-0.5B \
    --train_type full \
    --dataset '../training_data/AI-ModelScope/alpaca-gpt4-data-zh' \
              '../training_data/AI-ModelScope/alpaca-gpt4-data-en' \
              '../training_data/swift/self-cognition' \
    --torch_dtype bfloat16 \
    --num_train_epochs 1 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 1 \
    --learning_rate 1e-5 \
    --gradient_accumulation_steps 4 \
    --eval_steps 1000 \
    --save_steps 10000 \
    --save_total_limit 2 \
    --logging_steps 5 \
    --max_length 2048 \
    --output_dir output \
    --system 'You are a helpful assistant.' \
    --warmup_ratio 0.05 \
    --dataloader_num_workers 4 \
    --model_author "xxx" \
    --model_name "xx大模型" 
