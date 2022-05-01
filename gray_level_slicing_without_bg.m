clc
clear all
%f=[1 2 3; 4 5 6; 7 2 1]
f=imread('cameraman.tif');
r1=80
r2=155
[row,col]=size(f);
for x=1:1:row
    for y=1:1:col
        if f(x,y)>=r1 && f(x,y)<=r2
            g1(x,y)=255;
            g2(x,y)=255;
        else
            g1(x,y)=0;
            g2(x,y)=f(x,y);
        end
    end
end
figure(1),imshow(f),title('Original');
figure(2),imshow(g1),title('Gray Levl Slicing Without BG');
figure(3),imshow(g2),title('Gray Levl Slicing With BG');
%g