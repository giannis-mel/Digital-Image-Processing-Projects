function filtOut = myLowPassIdeal(cutOff , M)

filtOut = zeros(M);

for i=1:M
    for j=1:M
        Dij = sqrt( (i-M/2)^2 + (j-M/2)^2 );
        if Dij <= cutOff
            filtOut(i,j) = 1;
        end
    end
end

%showing the created filter
%mesh(filtOut);

end

