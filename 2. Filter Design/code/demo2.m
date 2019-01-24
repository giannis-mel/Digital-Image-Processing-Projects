%demo2.m script

clear all;
close all;
clc;

load('dip_hw_2.mat');

%Lowpass filters
%FOR LOWPASS IDEAL
filtOut = myLowPassIdeal(50,500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR LOWPASS BUTTERWORTH
filtOut = myLowPassButterworth(50 , 5, 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


%FOR LOWPASS GAUSS
filtOut = myLowPassGauss(50, 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


%Highpass filters
%FOR HIGHPASS IDEAL
filtOut = myHighPassIdeal(150 , 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR HIGHPASS BUTTERWORTH
filtOut = myHighPassButterworth(150 , 5, 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR HIGHPASS GAUSS
filtOut = myHighPassGauss(150, 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%Bandpass filters
%FOR BANDPASS IDEAL
filtOut = myBandPassIdeal(50 ,150 , 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);



%FOR BANDPASS BUTTERWORTH
filtOut = myBandPassButterworth(50 , 150 , 5, 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


%FOR BANDPASS GAUSS
filtOut = myBandPassGauss(50 ,150 , 500);
imOut = myFiltFreq(demo2Im1, filtOut);
imOut = myFiltFreq(demo2Im2, filtOut);


