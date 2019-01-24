function filtOut = myLowPassIdealDir(cutOff , M, theta , phi)


directional = myDirectional(M, theta, phi);
lowPass = myLowPassIdeal(cutOff,M);

filtOut = lowPass.*directional;
