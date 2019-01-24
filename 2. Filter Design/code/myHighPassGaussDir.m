function filtOut = myHighPassGaussDir(sigma , M, theta , phi)


directional = myDirectional(M, theta, phi);
lowPass = myHighPassGauss(sigma,M);

filtOut = lowPass.*directional;