%Meleziadis Ioannis AEM 8760
%imIn : input image with size MxN and n channels

function myAffinityMat = Image2Graph(imIn)
    
    %commands for writing the output in a txt file
    %fileID = fopen('output.txt', 'wt');
    
    %initialize
    n = size(imIn,3);
    M = size(imIn,1);
    N = size(imIn,2);
    myAffinityMat = zeros(M*N,M*N);
    
    imIn = im2double(imIn);
    
    %double for loop that creates the affinity matrix
    for i=1:size(myAffinityMat,1);
        for j=1:size(myAffinityMat,2);
            %calculations for pixel 1
            p1 = i;
            p2 = 1;
            while p1>M
                p1 = p1 - M;
                p2 = p2 + 1;
            end
            %calculations for pixel 2
            p3 = j;
            p4 = 1;
            while p3>M
                p3 = p3 - M;
                p4 = p4 + 1;
            end
            
            %fprintf(fileID,'%d,%d with %d,%d goes to %d,%d in graph\n',p2,p1,p4,p3,i,j);
            if n>2  %example n = 3 (rgb picture)
                for lp = 1:n
                    pixel1(lp) = imIn(p2,p1,lp);
                    pixel2(lp) = imIn(p4,p3,lp);
                end
            else %if n = 1 (grayscale picture)
                pixel1 = imIn(p2,p1);
                pixel2 = imIn(p4,p3);
            end
            
            % usefull comments for debugging
            %fprintf('size of pixel1 and pixel2 is :');
            %disp(size(pixel1));
            %disp(pixel1);
            
            %executing weight function
            myAffinityMat(i,j) = 1/exp(norm(pixel1-pixel2));
        end
    end

    matrixSymmetry = issymmetric(myAffinityMat)
    %fclose(fileID);

end

