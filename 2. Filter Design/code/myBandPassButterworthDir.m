function filtOut = myBandPassButterworthDir(cutOffLow , cutOffHigh , n, M,theta , phi)

directional = myDirectional(M, theta, phi);
lowPass = myBandPassButterworth(cutOffLow,cutOffHigh,n,M);

filtOut = lowPass.*directional;