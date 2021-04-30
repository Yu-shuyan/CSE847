function [a2,b,Omega] = imag_change(channel)
rand('seed',1);
a = imread('test.jpg');
a=double(a(:,:,channel));
a2 = imcrop(a,[20 20 127 127]);
%remove pixel
num = 0.5*128*128;
ind = randi([1,128],num,2); 
Omega = ones(128,128);
disp(size(ind));
b=a2;
for i=1:num
   b(ind(i)) = 0; 
   Omega(ind(i)) = 0;
end
end

