python /content/FaceX-Zoo/test_protocol/test_lfw.py \
    --test_set 'LFW' \
    --data_conf_file '/content/FaceX-Zoo/test_protocol/data_conf.yaml' \
    --backbone_type 'MobileFaceNet' \
    --backbone_conf_file '/content/FaceX-Zoo/test_protocol/backbone_conf.yaml' \
    --batch_size 2048 \
    --model_path '/content/Semi-Siamese-Training/model'
