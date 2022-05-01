clc;
clear all;
f1=double(imread('cameraman.tif'));
[row,col]=size(f1);
figure(1),imshow(uint8(f1));

F1=fft2(f1);
figure(2),imagesc(log(1+abs(F1)));

for x=1:1:row
    for y=1:1:col
        f(x,y)=f1(x,y)*(-1)^(x+y);
    end
end

F=fft2(f);
figure(3),imagesc(log(1+abs(F)));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D0=35
for u=1:1:row
    for v=1:1:col
        D(u,v)=sqrt((u-(row)/2)^2+(v-(col)/2)^2);
        if D(u,v)<=D0
            h(u,v)=0;
        else
            h(u,v)=1;
        end
    end
end
figure(4),imshow(h);
figure(5),mesh(h);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
G=F.*h;
g=abs(ifft2(G));
figure(6),imshow(uint8(g));