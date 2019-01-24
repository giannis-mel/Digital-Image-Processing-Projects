%Meleziadis Ioannis AEM 8760
%k is the number of clusters

function clusterIdx = mySpectralClustering(anAffinityMat , k)


W = anAffinityMat ;
D = zeros(size(W));
n = size(W,3);

%calculating D
for i=1:size(W,1)
    sum = 0;
    for j=1:size(W,2)
        sum = sum + W(i,j);
    end
    D(i,i) = sum ;
end

%calculating L
L = D - W;

%finding k smallest eigenvalues and eigenvectors
%if an error occurs in eigs then change 'sm' to 'smallestabs'
%Values are not used
[Vectors,Values] = eigs(L,k,'sm'); 


clusterIdx = kmeans(Vectors,k);
%Vectors is size M*N,k and Values is k,k

end