%demo3.m

load('dip_hw_2.mat');
%FOR FIRST PART
directionalFilter = completeCircle();
lowpassFilter = myLowPassIdeal(200,500);


usingDir=myFiltFreq(demo2Im2,directionalFilter);
usingLow=myFiltFreq(demo2Im2,lowpassFilter);
close all;

figure('Name','Using directional');
imshow(usingDir);
figure('Name','Using lowpass');
imshow(usingLow);

usingDir=myFiltFreq(demo2Im1,directionalFilter);
usingLow=myFiltFreq(demo2Im1,lowpassFilter);
close;close;close;close;

figure('Name','Using directional');
imshow(usingDir);
figure('Name','Using lowpass');
imshow(usingLow);

x = input('Press 1 to continue to 9 directional filters .');

%FOR LOWPASS IDEAL
im1 = myLowPassIdealDir(50 , 500, 0 , 30);
im2 = myLowPassIdealDir(50 , 500, 30 , 30);
im3 = myLowPassIdealDir(50 , 500, 60 , 30);
im4 = myLowPassIdealDir(50 , 500, 90 , 30);
im5 = myLowPassIdealDir(50 , 500, 120 , 30);
im6 = myLowPassIdealDir(50 , 500, 150 , 30);


filtOut = im1+im2+im3+im4+im5+im6;

imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR LOWPASS BUTTERWORTH
im1 = myLowPassButterworthDir(50,5 , 500, 0 , 30);
im2 = myLowPassButterworthDir(50,5 , 500, 30 , 30);
im3 = myLowPassButterworthDir(50,5 , 500, 60 , 30);
im4 = myLowPassButterworthDir(50,5 , 500, 90 , 30);
im5 = myLowPassButterworthDir(50,5 , 500, 120 , 30);
im6 = myLowPassButterworthDir(50,5 , 500, 150 , 30);


filtOut = im1+im2+im3+im4+im5+im6;

imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


%FOR LOWPASS GAUSS
im1 = myLowPassGaussDir(50, 500, 0 , 30);
im2 = myLowPassGaussDir(50 , 500, 30 , 30);
im3 = myLowPassGaussDir(50 , 500, 60 , 30);
im4 = myLowPassGaussDir(50 , 500, 90 , 30);
im5 = myLowPassGaussDir(50 , 500, 120 , 30);
im6 = myLowPassGaussDir(50 , 500, 150 , 30);


filtOut = im1+im2+im3+im4+im5+im6;

imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR HIGHPASS IDEAL
im1 = myHighPassIdealDir(150 , 500, 0 , 30);
im2 = myHighPassIdealDir(150 , 500, 30 , 30);
im3 = myHighPassIdealDir(150 , 500, 60 , 30);
im4 = myHighPassIdealDir(150 , 500, 90 , 30);
im5 = myHighPassIdealDir(150 , 500, 120 , 30);
im6 = myHighPassIdealDir(150 , 500, 150 , 30);


filtOut = im1+im2+im3+im4+im5+im6;

imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


%omoiws kai ta ypoloipa
