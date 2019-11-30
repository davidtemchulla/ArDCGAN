## This script was taken from Alexia Jolicoeur Martineau's work https://ajolicoeur.wordpress.com/cats/
## I modified some elements such as the link to download the dataset.

## Download CAT dataset
# wget -nc http://www.simoninithomas.com/data/cats.zip

## Setting up folder
mkdir cat_dataset
unzip cats.zip
 mv CAT_00/* cat_dataset
 rmdir CAT_00
 mv CAT_01/* cat_dataset
 rmdir CAT_01
 mv CAT_02/* cat_dataset
 rmdir CAT_02
 mv CAT_03/* cat_dataset
 rmdir CAT_03
 mv CAT_04/* cat_dataset
 rmdir CAT_04
 mv CAT_05/* cat_dataset
 rmdir CAT_05
 mv CAT_06/* cat_dataset
 rmdir CAT_06

## Error correction
#rm cat_dataset/00000003_019.jpg.cat
#mv 00000003_015.jpg.cat cat_dataset/00000003_015.jpg.cat

## Removing outliers
# Corrupted, drawings, badly cropped, inverted, impossible to tell it's a cat, blocked face
#cd cat_dataset

## Preprocessing and putting in folders for different image sizes
mkdir cats_bigger_than_64x64
mkdir cats_bigger_than_128x128
python preprocess_cat_dataset.py

## Removing cat_dataset
rm -r cat_dataset

## Move to your favorite place
#mv cats_bigger_than_64x64 /home/alexia/Datasets/Meow_64x64
#mv cats_bigger_than_128x128 /home/alexia/Datasets/Meow_128x128
