function [] = show_fig(A,imgHeight)
A2 = reshape(A, imgHeight, []);
imshow(A2');
end

