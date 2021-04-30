result_folder = sprintf('figure3');
[X,X_missing,Omega] = imag_change(3);
name='origin';
figure('NumberTitle', 'off', 'Name', name,'visible','off');
imshow(uint8(X));
saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
rarr = [1, 5, 10, 15, 20, 25, 30];
error=[];
for r=rarr
    X_complete = hardimpute(X_missing, Omega, r);
    name=num2str(r);
    figure('NumberTitle', 'off', 'Name', name,'visible','off');
    imshow(uint8(X_complete));
    saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
    error(end+1) = norm(X-X_complete,'fro');
end
name='recovery errors';
figure('NumberTitle', 'off', 'Name', name,'visible','off');
plot(rarr,error);
xlabel('p');
ylabel('recovery errors');
title('recovery errors');
saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));