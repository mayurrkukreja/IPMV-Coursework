clc 
clear all
f1=imread('cameraman.tif');
f=imnoise(f1,'salt & pepper',0.1);
[row,col]=size(f);
%w=[1 1 1; 1 1 1; 1 1 1]/9;
g=f;
for x=2:1:row-1
    for y=2:1:col-1
       A=[f(x-1,y-1) f(x-1,y) f(x-1,y+1)...
            f(x,y-1) f(x,y) f(x,y+1) ...
            f(x+1,y-1) f(x+1,y) f(x+1,y+1)];
        B=sort(A);
        g(x,y)=B(5);
    end
end
figure(1), imshow(f1), title('Original')
figure(2),imshow(f), title ('Salt and Pepper Noise')
figure(3),imshow(g),title ('Median Filtering')