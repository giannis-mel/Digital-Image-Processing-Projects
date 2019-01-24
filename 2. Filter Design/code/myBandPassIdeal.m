function filtOut = myBandPassIdeal(cutOffLow ,cutOffHigh , M)

if cutOffHigh < cutOffLow
    error('cutOffLow is bigger than cutOffHigh\n');
end

low = myLowPassIdeal(cutOffLow,M);
high = myLowPassIdeal(cutOffHigh,M);

filtOut = high - low;


%showing the created filter
%mesh(filtOut);

end

