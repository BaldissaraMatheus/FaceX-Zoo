mkdir 'log'
python /content/FaceX-Zoo/training_mode/conventional_training/train.py \
    --data_root '/content/Semi-Siamese-Training/datasets/LFW/test/cropped-faces' \
    --train_file '/content/Semi-Siamese-Training/datasets/LFW/test/lfw_face_info.txt' \
    --backbone_type 'MobileFaceNet' \
    --backbone_conf_file '/content/FaceX-Zoo/training_mode/backbone_conf.yaml' \
    --head_type 'MagFace' \
    --head_conf_file '/content/FaceX-Zoo/training_mode/head_conf.yaml' \
    --lr 0.1 \
    --out_dir 'out_dir' \
    --epoches 18 \
    --step '10, 13, 16' \
    --print_freq 200 \
    --save_freq 3000 \
    --batch_size 512 \
    --momentum 0.9 \
    --log_dir 'log' \
    --tensorboardx_logdir 'mv-hrnet' \
    2>&1 | tee log/log.log
