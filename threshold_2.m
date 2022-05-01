clc
clear all
%f=[1 2 3; 4 5 6; 7 2 1]
f=imread('cameraman.tif');
[row,col]=size(f);
for x=1:1:row
    for y=1:1:col
        if f(x,y)>=0 && f(x,y)<=130
            g(x,y)=0;
        else
            g(x,y)=255;
        end
    end
end
figure(1),imshow(f),title('Original');
figure(2),imshow(g),title('Threshold');
%g