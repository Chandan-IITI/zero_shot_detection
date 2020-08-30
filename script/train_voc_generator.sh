python trainer.py --manualSeed 806 \
--cls_weight 0 --cls_weight_unseen 0.1 --nclass_all 21 --syn_num 500 --val_every 1 \
--cuda --netG_name MLP_G \
--netD_name MLP_D --nepoch 150 --nepoch_cls 25 --ngh 4096 --ndh 4096 --lambda1 10 \
--critic_iter 5 \
--dataset voc --batch_size 64 --nz 300 --attSize 300 --resSize 1024 \
--lr 0.00001 \
--lr_step 20 --gan_epoch_budget 38000 --lr_cls 0.00005 \
--pretrain_classifier mmdetection/work_dirs/faster_rcnn_r101_fpn_1x_voc0712/epoch_4.pth \
--class_embedding VOC/fasttext_synonym.npy \
--testsplit test_0.6_0.3 \
--trainsplit train_0.6_0.3 \
--lz_ratio 0 \
--outname checkpoints/VOC_con_0_0.1 \
--pretrain_classifier_unseen voc_fc_1024_300.pth \
# --netD checkpoints/VOC_new_unseen_cls_10/disc_latest.pth \
# --netG checkpoints/VOC_new_unseen_cls_10/gen_latest.pth


# --pretrain_classifier mmdetection/voc_dict/epoch_4.pth \
# --pretrain_classifier mmdetection/work_dirs/faster_rcnn_r101_fpn_1x_voc0712/epoch_4.pth \
