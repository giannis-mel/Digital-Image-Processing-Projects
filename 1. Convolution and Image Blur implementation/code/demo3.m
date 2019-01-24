%Meleziadis Giannis AEM 8760
load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb(800:900,200:320,:);
im2_rgb = im_rgb(1200:1350 ,200:300,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);

%ektipwsi tis arxikis eikonas 1
figure('Name','im1_rgb before motion blurring');
imshow(im1_rgb);

%ektipwsi tis eikonas 1 meta to blurring
[a mask1]=myMotBlur(im1_rgb,[1 1],0.6); 
figure('Name','45degrees fast blurring of im1_rgb');
imshow(a);

%ektipwsi tis arxikis eikonas 2
figure('Name','im2_gray before motion blurring');
imshow(im2_gray);

%ektipwsi tis eikonas 2 meta to blurring
[b mask2]=myMotBlur(im2_gray,[1 0],0.6);
figure('Name','90degrees fast blurring of im2_gray ');
imshow(b);


%end
