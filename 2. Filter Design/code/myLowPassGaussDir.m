function filtOut = myLowPassGaussDir(sigma , M, theta , phi)

directional = myDirectional(M, theta, phi);
lowPass = myLowPassGauss(sigma,M);

filtOut = lowPass.*directional;