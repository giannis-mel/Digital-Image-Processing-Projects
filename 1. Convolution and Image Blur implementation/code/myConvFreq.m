function imOut = myConvFreq(imX, imY)
%Meleziadis Giannis AEM 8760
%This function implements a convolution in the frequency domain between
%two images imX and imY. The two images may be of different sizes 
%Below is the code

%imX is size N1xM2, imY is size N2xM2

sizex=size(imX,1)+size(imY,1)-1;
sizey=size(imX,2)+size(imY,2)-1;

%disp('size of 1 is :');disp(size(fft2(imX, sizex, sizey)));
%disp('size of 2 is :');disp(size(fft2(imY,sizey,sizex)));

convolution=ifft2( fft2(imX, sizex, sizey).*transpose(fft2(imY,sizey,sizex)),sizey,sizex);
imOut = real(transpose(convolution));