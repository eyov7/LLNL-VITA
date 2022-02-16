# LSBATCH: User input
#!/bin/bash
   ###LSf Syntax
   #BSUB -nnodes 2
   #BSUB -W 720
   #BSUB -G heas
   #BSUB -e myerrors_main_imp_downstream-Imagenet-noise-0.2.txt
   #BSUB -o myoutput_main_imp_downstream-Imagenet-noise-clean-0.2.txt
   #BSUB -J imp_downstream-Imagenet-noise-0.2
   #BSUB -q pbatch
   cd /usr/workspace/olivare/
   source opence/bin/activate
   cd /g/g20/olivare/CV_LTH_Pre-training_copy3/
   CUDA_VISIBLE_DEVICES=0,1,2,3 python -u main_imp_imagenet2.py \
	--data /usr/workspace/RML-data/data/imagenet/ \
	--arch resnet50 \
	--epochs 90 \
	--batch_size 512 \
        --decreasing_lr 30,60 \
	--lr 0.4 \
	--rate 0.2 \
	--conv1 \
	--random \
	--pruning_times 4 \
	--save_dir imagenetc_imp
   echo 'Done'  
