clc 
clear all
f=imread('pout.tif');
[row,col]=size(f);
r1=75;
r2=150;
alpha=0.3;
beta=1.9;
gamma=0.5;
s1=alpha*r1;
s2=beta*(r2-r1)+s1;
for x=1:1:row
    for y=1:1:col
       if 0<=f(x,y) && f(x,y)<=r1
           g(x,y)=alpha*f(x,y);
       elseif r1<f(x,y) && f(x,y)<=r2
           g(x,y)=beta*(f(x,y)-r1)+s1;
       else
           g(x,y)=gamma*(f(x,y)-r2)+s2;
       end
    end
end
figure(1), imshow(f), title('Original')
figure(2),imshow(g), title ('Contrast Stretching')
