%Meleziadis Giannis AEM 8760
load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb(800:900,200:320,:);
im2_rgb = im_rgb(1200:1350 ,200:300,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);

disp('Command 1 ...');
imOut=myFilter(im1_rgb, edge_2d);
figure('Name','Result 1');
imshow(imOut);

disp('Command 2 ...');
imOut=myFilter(im2_gray, edge_3d);
disp('You should see an error');


disp('Command 3 ...');
imOut=myFilter(im2_rgb, blur_3d);
figure('Name','Result 3');
imshow(imOut);

disp('Command 4 ...');
imOut=myFilter(im1_gray, blur_3d);
disp('You should see an error!');



