warning off 
clc, close all, clear all
imagen=imread('TEST.jpg');
imshow(imagen);
title('INPUT IMAGE WITH NOISE')
if size(imagen,3)==3
    imagen=rgb2gray(imagen);
end

threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);%threshold is like the value below which each pixel will be set 0 and above will be set 1.

imagen = bwareaopen(imagen,30);%it removes all objects(white here) which have <=30 pixels i.e,area of object...it is a type of noise reduction
%figure;imshow(imagen);

word=[ ];
re=imagen;
fid = fopen('text.txt', 'wt');
load templates
global templates
num_letras=size(templates,2);

while 1
    [fl re]=lines(re);
    %figure;imshow(re);
    imgn=fl;
    %-----------------------------------------------------------------------------------------------------------
    [L Ne] = bwlabel(imgn);% here Ne=4(ist run) then Ne=5(2nd run) i.e, Ne tells no. of characters in a line
    %bwlabel tells the no. of white objects( with value 1 ) on black(0) backgound
    
    % The elements of L are integer values greater than or equal to 0. The pixels labeled 0 are the background. 
    %The pixels labeled 1 make up one object; the pixels labeled 2 make up a second object; and so on.
    
    %L will  NOT be imgn by values...but L will be imgn by appearance
    %-----------------------------------------------------------------------------------------------------------
    for n=1:Ne
        [r,c] = find(L==n);% 'find' returns index of the matrix not intensity...
        %so here it gives x,y index of white object with intensity 'n'(here 1 then 2,3,4 for uiet)
        
        n1=imgn(min(r):max(r),min(c):max(c));% min row t max row...,...min column to max column  
        img_r=imresize(n1,[42 24]);
       
        letter=read_letter(img_r,num_letras);
        word=[word letter];
    end
    
    fprintf(fid,'%s\n',word);
    word=[ ];
    if isempty(re)
        break
    end    
end
fclose(fid);
winopen('text.txt')
clear all