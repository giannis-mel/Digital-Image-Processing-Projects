function filtOut = myHighPassIdeal(cutOff , M)

filtOutLowPass = myLowPassIdeal(cutOff,M);

filtOut = ones(M)-filtOutLowPass;

%showing the created filter
%mesh(filtOut);

end