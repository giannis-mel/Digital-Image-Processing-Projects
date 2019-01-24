%Meleziadis Giannis AEM 8760
load dip_hw_1.mat;
% im_rgb is in workspace
im_gray = rgb2gray(im_rgb);
im1_rgb = im_rgb(800:900,200:320,:);
im2_rgb = im_rgb(1200:1350 ,200:300,:);
im1_gray = im_gray (800:900 ,200:320);
im2_gray = im_gray (1200:1350 ,200:300);

disp('Convolution in Space domain is ...');
resultFromMyConvSpat=myConvSpat(im1_gray,im2_gray);
figure('Name','Result from myConvSpat');
imshow(resultFromMyConvSpat);

disp('Convolution in Frequency domain is ...');
resultFromMyConvFreq=myConvFreq(im1_gray,im2_gray);
figure('Name','Result from myConvFreq');
imshow(resultFromMyConvFreq);

disp('Now is the graph of run time for the two functions');

N=50:5:250;

spat=[];
freq=[];
j=1;
i=50;
while i<=250
    A=rand(i);
    B=rand(i);
   
    tic;myConvFreq(A,B);freq(j)=toc;
    tic;myConvSpat(A,B);spat(j)=toc;
    
    j=j+1;
    i=i+5;
    disp(i);
end

disp(size(N));disp(size(spat));disp(size(freq));

figure('Name','Runtimes');

plot(N,spat,N,freq);

xlabel('Images of size NxN') % x-axis label
ylabel('Time in secs') % y-axis label
legend('y = myConvSpat(x)','y = myConvFreq(x)');









