# TIP: Gabor Convolutional Networks

Official PyTorch implementation of Gabor CNN. 
But all the results in the paper are based on [Torch 7](https://github.com/bczhangbczhang/Gabor-Convolutional-Networks).
These two implementations are sharing the same infrastructure level code.

## Install

```
git clone https://github.com/jxgu1016/Gabor_CNN_PyTorch
cd Gabor_CNN_PyTorch
sh install.sh
```

## Install third party tool
```
pip install tensorboardX
```

## Run MNIST demo

```
cd demo
python main.py --model gcn (--gpu 0)
```

## Acknowledgement
This branch was contributed and will be maintained by [@jxgu1016](https://github.com/jxgu1016), so any issues are recommended to be put on this [repo](https://github.com/jxgu1016/Gabor_CNN_PyTorch).


## Please cite:
@article{GaborCNNs, title={Gabor Convolutional Networks}, author={Luan, Shangzhen and chen, chen and Zhang, Baochang* and han, jungong and Liu, Jianzhuang}, year={2018}, IEEE Trans. Image processing. }
