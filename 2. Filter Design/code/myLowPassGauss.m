function filtOut = myLowPassGauss(sigma , M)



for i=1:M
    for j=1:M
        Dij = sqrt( (i-M/2)^2 + (j-M/2)^2 );
        filtOut(i,j) = exp(-(Dij^2)/(2*sigma^2));
    end
end


%showing the created filter
%mesh(filtOut);

end