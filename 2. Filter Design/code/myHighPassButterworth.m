function filtOut = myHighPassButterworth(cutOff , n, M)

filtOutLowPass = myLowPassButterworth(cutOff,n,M);

filtOut = ones(M)-filtOutLowPass;

%showing the created filter
%mesh(filtOut);

end