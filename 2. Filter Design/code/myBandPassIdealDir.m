function filtOut = myBandPassIdealDir(cutOffLow ,cutOffHigh , M, theta , phi)


directional = myDirectional(M, theta, phi);
lowPass = myBandPassIdeal(cutOffLow,cutOffHigh,M);

filtOut = lowPass.*directional;