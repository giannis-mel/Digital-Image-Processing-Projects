function clusterIdx = myNCuts(anAffinityMat ,k)

W = anAffinityMat ;

[ X , Y , Z ] = size(d2b);
result = reshape(clusterIdx,[X,Y]);
result = result.';

assocAV = 0;
for i=1:size(W,1)
    for j=1:size(W,2)
        if result(i,j)==1
            assocAV = assocAV + W(i,j)
    end
end





end