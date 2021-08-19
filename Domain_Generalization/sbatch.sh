#!/bin/bash

#SBATCH -o job.%j.out
#SBATCH -p greg-gpu
#SBATCH -C "1080ti|2080ti"
#SBATCH -J sketch
#SBATCH -c1
#SBATCH -c 3

cd /share/data/vision-greg2/xdu/RSC-HResNet/Domain_Generalization


source activate RSC


python train.py --net resnet18 >&1 | tee new_sketch_logs1.txt
python train.py --net resnet18 >&1 | tee new_sketch_logs2.txt
python train.py --net resnet18 >&1 | tee new_sketch_logs3.txt
python train.py --net resnet18 >&1 | tee new_sketch_logs4.txt
python train.py --net resnet18 >&1 | tee new_sketch_logs5.txt