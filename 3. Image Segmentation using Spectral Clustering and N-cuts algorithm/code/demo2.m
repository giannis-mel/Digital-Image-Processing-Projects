%Meleziadis Ioannis AEM 8760

clc;

load('dip_hw_3.mat');
rng(1);

affinityd2a  = Image2Graph(d2a);
affinityd2b  = Image2Graph(d2b);

%calculations for d2a
k = 2;
clusterIdx =  mySpectralClustering(affinityd2a , k);
fprintf('The results for d2a, k = 2 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2a);
figure;
[X,Y,Z] = size(d2a);
clusterIdx = clusterIdx / k;
d2anew = reshape(clusterIdx,[X,Y]);
d2anew = transpose(d2anew);
imshow(d2anew);


k = k + 1;
clusterIdx =  mySpectralClustering(affinityd2a , k);
fprintf('The results for d2a, k = 3 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2a);
figure;
clusterIdx = clusterIdx / k;
d2anew = reshape(clusterIdx,[X,Y]);
d2anew = transpose(d2anew);
imshow(d2anew);

k = k + 1;
clusterIdx =  mySpectralClustering(affinityd2a , k);
fprintf('The results for d2a, k = 4 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2a);
figure;
clusterIdx = clusterIdx / k;
d2anew = reshape(clusterIdx,[X,Y]);
d2anew = transpose(d2anew);
imshow(d2anew);

%calculations for d2b
k = 2;
clusterIdx =  mySpectralClustering(affinityd2b , k);
fprintf('The results for d2b, k = 2 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2b);
figure;
clusterIdx = clusterIdx / k;
d2bnew = reshape(clusterIdx,[X,Y]);
d2bnew = transpose(d2bnew);
imshow(d2bnew);

k = k + 1;
clusterIdx =  mySpectralClustering(affinityd2b , k);
fprintf('The results for d2b, k = 3 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2b);
figure;
clusterIdx = clusterIdx / k;
d2bnew = reshape(clusterIdx,[X,Y]);
d2bnew = transpose(d2bnew);
imshow(d2bnew);

k = k + 1;
clusterIdx =  mySpectralClustering(affinityd2b , k);
fprintf('The results for d2b, k = 4 are : \n');
%disp(clusterIdx');

%visualize 
figure;
imshow(d2b);
figure;
clusterIdx = clusterIdx / k;
d2bnew = reshape(clusterIdx,[X,Y]);
d2bnew = transpose(d2bnew);
imshow(d2bnew);


