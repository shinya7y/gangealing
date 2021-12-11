# TODO resolve out of memory
# TODO check outputs at 0 iter
# TODO change hyperparameters
python -m torch.distributed.launch --nproc_per_node=1 --max_restarts=0 --master_port=6085 train.py \
--ckpt pretrained/2020-01-11-skylion-stylegan2-animeportraits-networksnapshot-024664.pt \
--real_size 512 --gen_size 512 --batch 1 \
--padding_mode border --vis_every 100 --ckpt_every 50000 \
--iter 1500000 --loss_fn lpips \
--results "${HOME}/logs/gangealing" --exp-name "animeportraits_`date +%Y%m%d_%H%M%S`"
