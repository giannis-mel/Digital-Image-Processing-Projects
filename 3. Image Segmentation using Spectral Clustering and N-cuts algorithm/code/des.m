%visualize 
figure;
imshow(d2a);
d2anew = ones(50,50,3);
clusterIdx = clusterIdx/3;

k = 1;
for i=1:50
    for j=1:50
        d2anew(i,j) = clusterIdx(k);
        k=k+1;
    end
end
figure;
imshow(d2anew);