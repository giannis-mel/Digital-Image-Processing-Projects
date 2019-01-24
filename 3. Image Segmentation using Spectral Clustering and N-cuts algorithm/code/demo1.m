%Meleziadis Ioannis AEM 8760

clc;

load('dip_hw_3.mat');
rng(1);

k = 2;
clusterIdx =  mySpectralClustering(d1a , k);
fprintf('The results for k = 2 are : \n');
disp(clusterIdx');

k = k + 1;
clusterIdx =  mySpectralClustering(d1a , k);
fprintf('The results for k = 3 are : \n');
disp(clusterIdx');

k = k + 1;
clusterIdx =  mySpectralClustering(d1a , k);
fprintf('The results for k = 4 are : \n');
disp(clusterIdx');



