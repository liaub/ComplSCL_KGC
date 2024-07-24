
# 基于复空间对比学习的知识图谱补全技术
**Introduction**

1. 建模和推断对称/非对称，反转和合成等关系模式;

2. 解决正负样本不均衡或者语义相似.


评测指标:

 - [x] MRR, MR, HITS@1, HITS@3, HITS@10 (filtered)

**用法**

知识图谱数据:
 - *entities.dict*: 字典将实体映射到唯一的id；
 - *relations.dict*: 字典映射到唯一id的关系；
 - *train.txt*: 训练KGE模型来拟合该数据集；
 - *valid.txt*: 如果没有可用的验证数据，则创建一个空白文件；
 - *test.txt*: 在此数据集上对KGE模型进行了评估。

**训练过程**

例如，该命令在GPU为0的FB15k数据集上训练一个新模型。
```
CUDA_VISIBLE_DEVICES=0 python -u codes/run.py --do_train \
 --cuda \
 --do_valid \
 --do_test \
 --data_path data/FB15k \
 --model RotatE \
 -n 256 -b 1024 -d 1000 \
 -g 24.0 -a 1.0 -adv \
 -lr 0.0001 --max_steps 150000 \
 -save models/RotatE_FB15k_0 --test_batch_size 16 -de
```
   查看code /run.py中的argparse配置，了解更多参数和细节。

**测试过程**

    CUDA_VISIBLE_DEVICES=$GPU_DEVICE python -u $CODE_PATH/run.py --do_test --cuda -init $SAVE

**最佳结果**

run.sh脚本的最佳结果超参数:

    bash run.sh train RotatE FB15k 0 0 1024 256 1000 24.0 1.0 0.0001 200000 16 -de

