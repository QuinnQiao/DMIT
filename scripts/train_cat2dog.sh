GPU_ID=1
DISPLAY_ID=$((GPU_ID*5+7))
python ./train.py \
  --dataroot  /home/quinn/datasets/cat2dog \
  --checkpoints_dir /home/quinn/Documents/models/DMIT/cat2dog/checkpoints \
  --exp_name dmit_cat2dog \
  --model_name cat2dog \
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
  --use_dropout

  

  




  
