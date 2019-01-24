function filtOut = myBandPassButterworth(cutOffLow , cutOffHigh , n, M)

if cutOffHigh < cutOffLow
    error('cutOffLow is bigger than cutOffHigh\n');
end

low = myLowPassButterworth(cutOffLow,n,M);
high = myLowPassButterworth(cutOffHigh,n,M);

filtOut = high - low;


%showing the created filter
%mesh(filtOut);

end
