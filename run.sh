#!/bin/bash
#SBATCH --gpus-per-node=v100l:1
#SBATCH --mem=32G
#SBATCH --time=100:00:00
#SBATCH --account=def-annielee
#SBATCH --mail-user=tong.su@mail.utoronto.ca
#SBATCH --mail-type=ALL

module load python/3.8
# virtualenv --no-download env
source env/bin/activate
module load python/3.8
module load cuda/11.4 gcc/9.3.0 arrow/8.0.0

pip install pyyaml
pip install tensorflow
pip install tqdm
pip install tf-keras-vis
pip install pandas
pip install numpy
pip install seaborn
pip install scikit-learn

python3 train_models.py
