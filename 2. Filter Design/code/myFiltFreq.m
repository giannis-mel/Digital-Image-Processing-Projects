function imOut = myFiltFreq(imIn , someFreqFilt);

for a=1:size(imIn,1)
    for b=1:size(imIn,2)
        comp(a,b) = (-1)^(a+b);
    end
end

% (1) pollaplasiasmos tis eikonas eisodou
imIn2 = imIn.*comp;

% (2) ypologismos metasximatismou Fourier
imInFreq = fft2(imIn2);

% (3) ypologismos toy ginomenou
imOutFreq = imInFreq.*someFreqFilt ;

% (4) antistrofos metasximatismos Fourier
imOut = abs(ifft2(imOutFreq));

% (5) pollaplasiasmos tis eksodou me to idio
imOut = imOut.*comp;


figure; 
imshow(imIn);
figure;
imshow(imOut);