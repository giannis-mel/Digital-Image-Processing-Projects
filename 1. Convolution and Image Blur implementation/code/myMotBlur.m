function [imOut ,myMotBlurMask] = myMotBlur(imX, mot_vec , exposure_time)
%Meleziadis Giannis AEM 8760
%This function implements a motion blur mask creator with inputs the motion
%vector and the exposure time .Motio vector has the coordinates and
%exposure time is between (0,1]. The code works mot_vec values that are in
%in the range of degrees [0,320].

imX=im2double(imX);

if exposure_time>1 || exposure_time==0
    error('Exposure time must be between 0 and 1\n');
end

%finding degrees using mot_vector coordinates
y=mot_vec(2);
x=mot_vec(1);
degrees=radtodeg(atan2(y,x));

disp('Gwnia=');disp(degrees);


%analoga me to pou vrisketai i gwnia efarmozw analogi maska

%0 moires i 180 moires
if degrees==0 || degrees==180
    if exposure_time>0.5
        mask=[0.22 0.14 0.14 0.14 0.14 0.14 0.22];
    else
        mask=[0.0185 0.5 0.5 0.0185];
    end
end

%deksia panw tetarthmorio i sto katw aristera
if (degrees>1 && degrees<90)||(degrees>-180 && degrees<-90) 
    
    if exposure_time>0.5
        mask=zeros(8);
    else
        mask=zeros(3);
    end
    
    for i=1:size(mask,1)
        for j=1:size(mask,1)
            if i==j 
                if exposure_time>0.5
                    mask(i,j)=0.08;
                else
                    mask(i,j)=0.14;
                end
            end
            if i==j+1 || i==j-1
                if exposure_time>0.5
                    mask(i,j)=0.05;
                else
                    mask(i,j)=0.22;
                end
            end
        end
    end
    mask=flip(mask);
end

%panw aristera tetarthmorio i katw deksia
if (degrees>90 && degrees<180)||(degrees<0 && degrees>-90)
    
    if exposure_time>0.5
        mask=zeros(8);
    else
        mask=zeros(3);
    end
    
    for i=1:size(mask,1)
        for j=1:size(mask,1)
            if i==j 
                if exposure_time>0.5
                    mask(i,j)=0.08;
                else
                    mask(i,j)=0.14;
                end
            end
            if i==j+1 || i==j-1
                if exposure_time>0.5
                    mask(i,j)=0.05;
                else
                    mask(i,j)=0.22;
                end
            end
        end
    end
end

%90 moires i -90
if degrees==90 || degrees==-90
    if exposure_time>0.5
        mask=[0.22 0.14 0.14 0.14 0.14 0.14 0.22];
    else
        mask=[0.0185 0.5 0.5 0.0185];
    end
    mask=transpose(mask);
end

 disp('this is the mask');
 myMotBlurMask = mask
 disp('the size of imX is');disp(size(imX));
 
 imOut=myFilter(imX,myMotBlurMask);
 disp('the size of imOut is');disp(size(imOut));
    
 
end
