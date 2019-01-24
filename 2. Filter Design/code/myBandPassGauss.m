function filtOut = myBandPassGauss(sigmaLow ,sigmaHigh , M)

if sigmaHigh < sigmaLow
    error('cutOffLow is bigger than cutOffHigh\n');
end

low = myLowPassGauss(sigmaLow,M);
high = myLowPassGauss(sigmaHigh,M);

filtOut = high - low;


%showing the created filter
%mesh(filtOut);

end