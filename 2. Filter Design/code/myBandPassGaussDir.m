function filtOut = myBandPassGaussDir(sigmaLow ,sigmaHigh , M, theta , phi)


directional = myDirectional(M, theta, phi);
lowPass = myBandPassGauss(sigmaLow,sigmaHigh,M);

filtOut = lowPass.*directional;