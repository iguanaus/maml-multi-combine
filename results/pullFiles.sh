#!/bin/bash
dirr=results_404040_001
note=" 
These are the first results breaking baseline. 
python main.py --datasource=sinusoid --logdir=logs/sine5/  --norm=None --update_batch_size=100 --limit_task True --regularize_penal 0.0 --meta_lr .0001 --update_lr .0001 --resume True --metatrain_iterations=70000 --train=False --test_set=True 
"
mkdir $dirr
cd $dirr
echo "1.9E3779B97F4A7C15F39CC0" | pbcopy
echo "pass is on clip"
scp tor:/home/euler/John/maml-multi-combine/logs/sine5/cls_5.mbs_25.ubs_100.numstep1.updatelr0.0001nonorm/train_loss.csv .
scp tor:/home/euler/John/maml-multi-combine/logs/sine5/cls_5.mbs_25.ubs_100.numstep1.updatelr0.0001nonorm/validation_loss.csv .
scp tor:/home/euler/John/maml-multi-combine/logs/sine5/cls_5.mbs_25.ubs_100.numstep1.updatelr0.0001nonorm/test_ubs100_stepsize0.0001.csv .
echo "$note" > note.txt

