GPU_ID=0
DISPLAY_ID=$((GPU_ID*5+7))
nohup python3 ./train.py \
  --dataroot  /home/quinn/datasets/summer2winter_yosemite \
  --checkpoints_dir /home/quinn/Documents/models/DMIT/summer2winter/checkpoints \
  --exp_name dmit_season_transfer \
  --model_name season_transfer \
  --gpu ${GPU_ID} \
  --display_id ${DISPLAY_ID} \
  --display_port 8033 \
  --save_epoch_freq 25 \
  --niter 100 \
  --niter_decay 100 \
  --load_size 286 \
  --fine_size 256 \
  --n_attribute 2 \
  --n_style 8 \
  --batch_size 1 \
  --is_flip \
  --use_dropout > summer2winter.log 2> err.log & 

  

  




  
