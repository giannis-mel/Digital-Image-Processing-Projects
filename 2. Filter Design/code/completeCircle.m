function filtOut = completeCircle()
    

im1 = myLowPassIdealDir(200 , 500, 0 , 30);
im2 = myLowPassIdealDir(200 , 500, 30 , 30);
im3 = myLowPassIdealDir(200 , 500, 60 , 30);
im4 = myLowPassIdealDir(200 , 500, 90 , 30);
im5 = myLowPassIdealDir(200 , 500, 120 , 30);
im6 = myLowPassIdealDir(200 , 500, 150 , 30);

close all;

filtOut = im1+im2+im3+im4+im5+im6;
