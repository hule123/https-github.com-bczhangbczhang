#We provide a demo for GCN on MNIST dataset using torch7 and also Pytorch.

To run this demo, you should  install these dependencies:
```
luarocks install torchnet
luarocks install optnet
```

install GCN:
```bash
cd $DIR/GCN
bash install.sh
```

run this demo:
```bash
cd $DIR/MNIST_demo
bash ./scripts/Train_MNIST.sh
```

#The experimental results of the comparison algorithm are directly quoted from the corresponding papers. 

#Acknowledgement
This demo is partially based on the code of Orientation Response Networks(ORN,`http://zhouyanzhao.github.io/ORN/`)
If you use this demo please cite our paper and ORN. 

#bibtex:

@article{GaborCNNs, title={Gabor Convolutional Networks}, author={Luan, Shangzhen and chen, chen and Zhang,  Baochang*   and han, jungong and Liu, Jianzhuang}, year={2018}, IEEE Trans. Image processing.  }

@INPROCEEDINGS{Zhou2017ORN,
  title={Oriented Response Networks},
  author={Zhou, Yanzhao and Ye, Qixiang and Qiu, Qiang and Jiao, Jianbin},
  booktitle = {CVPR}
  year={2017},
}

