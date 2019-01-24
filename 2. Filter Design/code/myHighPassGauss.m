function filtOut = myHighPassGauss(sigma , M)

filtOutLowPass = myLowPassGauss(sigma,M);

filtOut = ones(M)-filtOutLowPass;

%showing the created filter
%mesh(filtOut);

end