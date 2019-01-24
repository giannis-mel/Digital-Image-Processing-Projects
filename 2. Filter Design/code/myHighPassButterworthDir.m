function filtOut = myHighPassButterworthDir(cutOff , n, M, theta , phi)


directional = myDirectional(M, theta, phi);
lowPass = myHighPassButterworth(cutOff,n,M);

filtOut = lowPass.*directional;