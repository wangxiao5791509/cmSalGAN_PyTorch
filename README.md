# cmSalGAN_PyTorch

### Official PyTorch implementation of *cm*SalGAN: RGB-D Salient Object Detection with Cross-View Generative Adversarial Networks [[Project-page](https://sites.google.com/view/cmsalgan/)]  [[arXiv](https://arxiv.org/pdf/1912.10280.pdf)]， which is accepted  by IEEE Transactions on Multimedia 2020. 

![rgbt_car10](https://github.com/wangxiao5791509/cmSalGAN_PyTorch/blob/master/cmsalgan.png)  
![rgbt_car10](https://github.com/wangxiao5791509/cmSalGAN_PyTorch/blob/master/vis.png)  



## Introduction

In this repo, we provide *cm*SalGAN's code. The discriminator is designed based on [SalGAN: Visual Saliency Prediction with Generative Adversarial Networks](https://arxiv.org/abs/1701.01081) (CVPR 2017 SUNw). The attention mechanism is designed based on [PiCANet: Pixel-wise Contextual Attention Learning for Accurate Saliency Detection](https://arxiv.org/abs/1812.06314) (CVPR 2018).

### Dependencies

***

- Pytorch 0.4.1+
- python3.5

### Training

***

Preparing the training set ([Google drive](https://drive.google.com/file/d/1YENRxUxAcFQhxcesxaWHEM3BipcIayX1/view?usp=sharing)) in `Dataset/train/`, which contains the subfolders `GT, RGB, depth`.

Preparing the edge dataset ([Google drive](https://drive.google.com/file/d/1J8z_LH2KvHYZEXApcwLgV8KoqBrxAJ5d/view?usp=sharing)) in `Dataset/train/`.

Then run the command:

~~~
python3 train.py
~~~

### Test

---

Preparing the test set in `Dataset/`. (**Note:** The depth images need to be adjusted to 0-255 by `normDepth.m` )

Downloading the pretrained model ([Google drive](https://drive.google.com/file/d/1j18BvmGEUip1NSlK3N4t66jU_WeV2tCF/view?usp=sharing)) to the path `models/`.

Then run the command:

~~~
python3 test.py
~~~

### Evaluation Results

---

We provide the saliency maps ([Google drive](https://drive.google.com/file/d/1WabQWJtupBRaHQKiOFt_NV3vqdIWw9vO/view?usp=sharing)) for **NJUD**, **NLPR** and **STEREO**.

We also provide the saliency maps ([Google drive](https://drive.google.com/file/d/1ESFYo3T0QDWb-0X-miR27A1ayBqmLZUW/view?usp=sharing)) for **DES**, **LFSD**, **SSD**, **DUT-RGBD** and **SIP**.

The evaluation-tool we used :  [https://github.com/wenguanwang/SODsurvey/](https://github.com/wenguanwang/SODsurvey/)


### Cite 

If you find this paper useful for your research, please cite following papers: 
~~~
@article{jiang2019cmsalgan,
  title={cmSalGAN: RGB-D Salient Object Detection with Cross-View Generative Adversarial Networks},
  author={Jiang, Bo and Zhou, Zitai and Wang, Xiao and Tang, Jin and Bin, Luo},
  journal={IEEE Transactions on Multimedia},
  doi={DOI: 10.1109/TMM.2020.2997184}, 
  year={2020}
}
~~~
