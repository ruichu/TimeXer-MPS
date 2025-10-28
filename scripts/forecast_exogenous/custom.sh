#export CUDA_VISIBLE_DEVICES=0

model_name=TimeXer
des='Timexer-MS'
patch_len=24

alias python3='python'

python3 -u run.py \
  --is_training 1 \
  --task_name long_term_forecast \
  --root_path ../dataset/ \
  --data_path dataset.csv \
  --model_id load_168_24 \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 168 \
  --pred_len 24 \
  --e_layers 3 \
  --enc_in 6 \
  --dec_in 3 \
  --c_out 1 \
  --des $des \
  --patch_len $patch_len \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 64 \
  --itr 1 \
  --target load \
  --freq d \
  --embed fixed
