
clc
clear

%creating matrix
N=5;
m=2;
p=2;
%X=zeros(N+1);

X =  [0 0 0 0 0
      0 1 0 0 0
      0 0 0 0 0
      0 0 0 1 0
      0 0 0 0 0];



%{
for a=1:N+1
    for b=1:N+1
        if a==m && b==p
            X(a,b)=1;
        elseif a==N+1-m && b==N+1-p
            X(a,b)=1;
        else
            X(a,b)=0;
        end
    end
end
%}
%X(1,1)= 40; %dc

tf = issymmetric(X);

x = ifft2(X);
x = abs(x);

comp = zeros(N);

for a=1:N
    for b=1:N
        comp(a,b) = (-1)^(a-1+b-1);
    end
end

xCenter = x.*comp;
xCenter = abs(xCenter);

XCenter = fft2(xCenter); %fft2 apo ton centered
%Plot X
figure('Name','X');
mesh(X);

%plot x
figure('Name','x');
mesh(x);

%plot XCenter
figure('Name','XCenter');
mesh(XCenter);

%plot xCenter
figure('Name','xCenter');
mesh(xCenter);

