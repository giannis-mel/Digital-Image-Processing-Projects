function filtOut = myHighPassIdealDir(cutOff , M, theta , phi)

directional = myDirectional(M, theta, phi);
lowPass = myHighPassIdeal(cutOff,M);

filtOut = lowPass.*directional;