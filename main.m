clear
clc
close all;
img= imread("night_view1.png");


img_f = double(img);
img_f = 255.0./(1+exp(1).^(-2.*img_f+4));
img_r = uint8(img_f);

figure,imshow(img);
figure,imshow(img_r);
figure,imhist(img_r(:,:,1));
figure,imhist(img_r(:,:,2));
figure,imhist(img_r(:,:,3));
