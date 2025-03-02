model_name=FBNet
root_path_name=./dataset/
data_path_name=ETTm2.csv
model_id_name=ETTm2
data_name=ETTm2
seq_len=96
for pred_len in 96 192 336 720
do
for random_seed in 2024
do
  python -u run.py \
      --is_training 1 \
      --root_path $root_path_name \
      --data_path $data_path_name \
      --model_id $model_id_name'_'$seq_len'_'$pred_len \
      --model $model_name \
      --data $data_name \
      --features M \
      --seq_len $seq_len \
      --pred_len $pred_len \
      --enc_in 7 \
      --fb True \
      --embed 'f'\
      --des 'Exp' \
      --itr 1 \
      --freq 't' \
      --batch_size 256 \
      --lradj 'type3'\
      --learning_rate 0.01 \
      --random_seed $random_seed
done
done