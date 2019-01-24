%demo1.m script

load('dip_hw_2.mat');

imOut = myFiltFreq(demo1Im, someFreqFilt);

figure;
mesh(someFreqFilt);