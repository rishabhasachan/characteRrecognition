A=imread('letters_numbers\A.bmp');
B=imread('letters_numbers\B.bmp');
C=imread('letters_numbers\C.bmp');
D=imread('letters_numbers\D.bmp');
E=imread('letters_numbers\E.bmp');
F=imread('letters_numbers\F.bmp');
G=imread('letters_numbers\G.bmp');
H=imread('letters_numbers\H.bmp');
I=imread('letters_numbers\I.bmp');
J=imread('letters_numbers\J.bmp');
K=imread('letters_numbers\K.bmp');
L=imread('letters_numbers\L.bmp');
M=imread('letters_numbers\M.bmp');
N=imread('letters_numbers\N.bmp');
O=imread('letters_numbers\O.bmp');
P=imread('letters_numbers\P.bmp');
Q=imread('letters_numbers\Q.bmp');
R=imread('letters_numbers\R.bmp');
S=imread('letters_numbers\S.bmp');
T=imread('letters_numbers\T.bmp');
U=imread('letters_numbers\U.bmp');
V=imread('letters_numbers\V.bmp');
W=imread('letters_numbers\W.bmp');
X=imread('letters_numbers\X.bmp');
Y=imread('letters_numbers\Y.bmp');
Z=imread('letters_numbers\Z.bmp');

letter=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];

character=letter;
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 ]);
save ('templates','templates')
clear all
