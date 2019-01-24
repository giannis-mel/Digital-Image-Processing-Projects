function filtOut = myLowPassButterworthDir(cutOff , n, M, theta , phi)

directional = myDirectional(M, theta, phi);
lowPass = myLowPassButterworth(cutOff,n,M);

%figure;
%mesh(lowPass);
%figure;
%mesh(directional);

filtOut = lowPass.*directional;
