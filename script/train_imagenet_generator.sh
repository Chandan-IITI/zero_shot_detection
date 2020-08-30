python trainer.py --manualSeed 4115 \
--cls_weight 0.01 --cls_weight_unseen 0.1 --nclass_all 201 --syn_num 300 --val_every 1 \
--cuda --netG_name MLP_G --netD_name MLP_D \
--nepoch 200 --nepoch_cls 25 --ngh 4092 --ndh 4092 --lambda1 10 --critic_iter 5 \
--dataset imagenet --batch_size 64 --nz 300 --attSize 300 --resSize 1024 --gan_epoch_budget 38000 \
--lr 0.0005 --lr_cls 0.0001 --lr_step 15 \
--outname checkpoints/imagenet_0.6_1_0_1_exp_4 \
--pretrain_classifier mmdetection/work_dirs/ILSVRC/epoch_12.pth \
--pretrain_classifier_unseen imagenet_127_23_fc_1024_300.pth \
--class_embedding ImageNet2017/fasttext_imagenet.npy \
--testsplit test \
--trainsplit train_0.6_0.3 \
--classes_split 177_23 \
--lz_ratio 0.5 \
--netD checkpoints/imagenet_0.6_1_0_1_exp_4/disc_latest.pth \
--netG checkpoints/imagenet_0.6_1_0_1_exp_4/gen_latest.pth
# split, th, ls, lu, lz 3072
