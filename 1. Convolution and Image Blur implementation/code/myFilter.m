function imOut = myFilter(imX, aMask);

%Meleziadis Giannis AEM 8760
%This function uses myConvSpat.m and acts like a filter with input imX and 
%mask the variable aMask


    %Convert input images to double format for the algorithm to work
    imX = im2double(imX);
    aMask = im2double(aMask);
    imOut=imX;

    if size(imX,3)==3 && size(aMask,3)==1
        %Then imX is an RGB image and aMask has one channel
        
        %Separating the channels of RGB image
        redBefore=imX(:,:,1); % Red channel
        greenBefore=imX(:,:,2); % Green channel
        blueBefore=imX(:,:,3); % Blue channel
        
        %Channels after filtering
        [redAfter]=myConvSpat(redBefore,aMask);
        [greenAfter]=myConvSpat(greenBefore,aMask);
        [blueAfter]=myConvSpat(blueBefore,aMask);
        
        %crop to have the same size as imX
        startx=floor(size(aMask,1)/2)+1;
        endx=startx+size(imX,1)-1;
        starty=floor(size(aMask,2)/2)+1;
        endy=starty+size(imX,2)-1;
  
        redAfter=redAfter(startx:endx,starty:endy);
        greenAfter=greenAfter(startx:endx,starty:endy);
        blueAfter=blueAfter(startx:endx,starty:endy);
        
        %{
        disp('the mask is '); aMask
        disp('inside myFilter');
        disp('size of rgb after is');disp(size(redAfter));
        disp('size of imX is');disp(size(imX));
        %}
        %imOut is the reconfigured RGB image after the mask has been 
        %applied in all channels
        imOut=cat(3, redAfter, greenAfter, blueAfter);
        disp('rgb eikona,monokanali maska xwrista se kathe kanali');
    end
    if size(imX,3)==3 && size(aMask,3)==3
        %Then imX is an RGB image and aMask has three channels
        
        %Separating the channels of mask
        channel1=aMask(:,:,1);
        channel2=aMask(:,:,2);
        channel3=aMask(:,:,3);
        
        %Separating the channels of RGB image
        redBefore2=imX(:,:,1); % Red channel
        greenBefore2=imX(:,:,2); % Green channel
        blueBefore2=imX(:,:,3); % Blue channel
        
        %Channels after filtering
        redAfter2=myConvSpat(redBefore2,channel1);
        greenAfter2=myConvSpat(greenBefore2,channel2);
        blueAfter2=myConvSpat(blueBefore2,channel3);
        
        
        %Crop before reconfigure to have the same size as imX
        startx=floor(size(aMask,1)/2)+1;
        endx=startx+size(imX,1)-1;
        starty=floor(size(aMask,2)/2)+1;
        endy=starty+size(imX,2)-1;
  
        redAfter2=redAfter2(startx:endx,starty:endy);
        greenAfter2=greenAfter2(startx:endx,starty:endy);
        blueAfter2=blueAfter2(startx:endx,starty:endy);
        
        %Reconfigured RGB image
        imOut=cat(3, redAfter2, greenAfter2, blueAfter2);


        
        disp('trikanali maska se rgb eikona');
    end
    
    if size(imX,3)==1 && size(aMask,3)==1
        %Then imX is a grayscale image and aMask has one channel
        imOut=myConvSpat(imX,aMask);
        
        %crop to have the same size as imX
        startx=floor(size(aMask,1)/2)+1;
        endx=startx+size(imX,1)-1;
        starty=floor(size(aMask,2)/2)+1;
        endy=starty+size(imX,2)-1;
  
        imOut=imOut(startx:endx,starty:endy);
        
        disp('monokanali eikona monokanali maska');
    end
    
    if size(imX,3)==1 && size(aMask,3)>1
        %Then imX is a grayscale image and aMask more than one channels
        %This should print an error
        disp('ERROR! Filtering doesn''t work when imX grayscale and aMask has more than one channels');
    
    end
    
 
    
    
end