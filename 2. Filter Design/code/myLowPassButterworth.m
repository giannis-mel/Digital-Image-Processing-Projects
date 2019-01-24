function filtOut = myLowPassButterworth(cutOff , n, M)


for i=1:M
    for j=1:M
        Dij = sqrt( (i-M/2)^2 + (j-M/2)^2 );
        filtOut(i,j) = 1/(1+(Dij/cutOff)^(2*n));
    end
end



%showing the created filter
%mesh(filtOut);

end