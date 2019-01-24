function [imOut] = myConvSpat(imX, imY)
%Meleziadis Giannis AEM 8760
%This function implements a convolution between two images imX and imY
%The two images may be of different sizes so before the convolution
%zero padding is applied in imX.
%Below is the code

    
    %padding sizes are M-1rows,N-1cols in each dimension
    paddingx=size(imY,1)-1;
    paddingy=size(imY,2)-1;
    
    imX2 = padarray(imX, [paddingx paddingy]); %padding imX with zeros
    imOut=zeros(size(imX2)); %output image is the same size as padded imX
    imY2 = imY(end:-1:1,end:-1:1,:); %horizontal and vertical flip for convolution
    
    %debugging
    %fprintf('paddingx=%d , paddingy=%d \n',paddingx,paddingy);
    %disp('size of imX=');disp(size(imX));
    %disp('size of imY=');disp(size(imY));
    %disp('size of imX2=');disp(size(imX2));
    
    for i=1:size(imX2,1)-paddingx
        for j=1:size(imX2,2)-paddingy
            
            %Matrix1 is the same size as imY2
            startx=i; endx=i+size(imY,1)-1;
            starty=j; endy=j+size(imY,2)-1;
            
            %crop imX2 to get a different matrix1 with each loop
            matrix1=imX2(startx:endx,starty:endy);
            matrix2=imY2; %matrix2 is the convolution mask
            
            %Turn arrays into vectors for dot product
            vector1=matrix1(:);
            vector2=matrix2(:);
            
            %{
            %Debugging
            fprintf('paddingx=%d , paddingy=%d \n',paddingx,paddingy);
            disp('size of imX=');disp(size(imX));
            disp('size of imY=');disp(size(imY));
            disp('size of imX2=');disp(size(imX2));
            fprintf('The size of vector1=%d and vector2=%d \n',numel(vector1),numel(vector2));
            fprintf('i=%d and j=%d \n',i,j);
            %}
            %dot-product between the two vectors stored in temp
            
            temp=dot(double(vector1),double(vector2));
            imOut(i+floor(size(imY2,1)/2),j+floor(size(imY2,2)/2))=temp;
            
        end
    end
    
    %crop imOut to have the same dimensions as the output of conv2!!
    
    sizex=size(imX,1)+size(imY,1)-1; %M1+M2-1
    sizey=size(imX,2)+size(imY,2)-1; %N1+N2-1
    
    startx=floor(size(imY2,1)/2)+1;
    endx=startx+sizex-1;
    starty=floor(size(imY2,2)/2)+1;
    endy=starty+sizey-1;
    
    imOut=imOut(startx:endx,starty:endy);
    
    %disp('inside myConvSpat');
    %disp(size(imOut));
    
    
    %ending program
end
    
    