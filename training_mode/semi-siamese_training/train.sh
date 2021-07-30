mkdir 'log'
python /content/FaceX-Zoo/training_mode/semi-siamese_training/train.py \
    --data_root '/content/Semi-Siamese-Training/datasets/LFW/test/cropped-faces' \
    --train_file '/content/Semi-Siamese-Training/datasets/LFW/test/lfw_face_info.txt' \
    --backbone_type 'MobileFaceNet' \
    --backbone_conf_file '/content/FaceX-Zoo/training_mode/backbone_conf.yaml' \
    --head_type 'SST_Prototype' \
    --head_conf_file '/content/FaceX-Zoo/training_mode/head_conf.yaml' \
    --lr 0.1 \
    --out_dir 'out_dir' \
    --epoches 250 \
    --step '150,200,230' \
    --print_freq 100 \
    --batch_size 512 \
    --momentum 0.9 \
    --alpha 0.999 \
    --log_dir 'log' \
    --tensorboardx_logdir 'sst_mobileface' \
    --save_freq 10 \
    --evaluate \
    --test_set 'LFW' \
    --test_data_conf_file '/content/FaceX-Zoo/test_protocol/data_conf.yaml' \
    2>&1 | tee log/log.log
