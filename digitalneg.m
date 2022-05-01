clc
clear all
%f=[1 2 3; 4 5 6; 7 2 1]
f=imread('cameraman.tif');
[row,col]=size(f);
for x=1:1:row
    for y=1:1:col
        g(x,y)=255-f(x,y);
    end
end
figure(1),imshow(f),title('Original');
figure(2),imshow(g),title('Negative');
%g