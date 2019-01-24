function filtOut = myDirectional(M , theta, phi)

filtOut=zeros(M);

middle=theta;
upper=theta+phi/2;
lower=theta-phi/2;

load('dip_hw_2.mat')

[height, width] = size(filtOut); % store the size of the image
centroid = ceil([height, width]./2); %get the center if the image
disp('the centroid is');
disp(centroid);


for i=1:height
    for j=1:width
        
        %point(1)=i point(2)=j
        point = [i-centroid(1) j-centroid(2)];
        if point(1)<=0 && point(2)>=0 %first quadrant
            angle = rad2deg(atan2((j-centroid(2)),-(i-centroid(1))));
            angle = 90 - angle;
        elseif point(1)<0 && point(2)<=0 %second quadrant
            angle = rad2deg(atan2(-(j-centroid(2)),-(i-centroid(1))));
            angle = angle + 90;
        elseif point(1)>=0 && point(2)<0 %third quadrant
            angle = rad2deg(atan2(-(j-centroid(2)),(i-centroid(1))));
            angle = 270 - angle;           
        elseif lower<0 && point(1)>0 && point(2)>0 %third quadrant
            angle = rad2deg(atan2((j-centroid(2)),(i-centroid(1))));
            angle = 90-angle;
        end
            
        if angle<=upper && angle>lower
            filtOut(i,j)=1;
        end
        
      
    end
end

if upper>180 && lower<180
    filtOut(centroid(1),1:centroid(2))=1;
end


disp(lower);disp(upper);

%mirroring

for i=1:height
    for j=1:width
        if filtOut(i,j)==1
            %prwta oi 4 gwnies
            if i==1 && j==1
                filtOut(M,M)=1;
            elseif i==1 && j==M
                filtOut(M,1)=1;
            elseif i==M && j==1
                filtOut(1,M)=1;
            elseif i==M && j==M
                filtOut(1,1)=1;
            %meta ola ta alla 
            else
                filtOut(M+1-i,M+1-j)=1;
            end  
        end
    end
end
