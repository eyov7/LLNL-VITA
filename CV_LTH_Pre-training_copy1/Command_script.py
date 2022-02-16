#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jan 13 15:55:12 2022

@author: ever
"""

CUDA_VISIBLE_DEVICES=0 python -u main_imp_downstream.py \
	--data /g/g20/olivare/CV_LTH_Pre-training/data \
	--dataset cifar10 \
	--arch resnet50 \
	--pruning_times 19 \
	--prune_type lt \
	--save_dir imp_downstream \
	# --pretrained [pretrained weight if prune_type==pt_trans] \
	# --random_prune [if using random pruning] \
    # --rewind_epoch [rewind weight epoch if prune_type==rewind_lt] \