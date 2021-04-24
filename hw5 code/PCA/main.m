%x=[0 0;-1 2;-3 6;1 -2;3 -6];
%scatter(x(:,1),x(:,2),'b*');
load USPS.mat;
result_folder = sprintf('figure');
name='origin-1';
figure('NumberTitle', 'off', 'Name', name,'visible','off');
show_fig(A(1,:),16);
saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
name='origin-2';
figure('NumberTitle', 'off', 'Name', name,'visible','off');
show_fig(A(2,:),16);
saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
p = [10,50,100,200];
meanA = mean(A,1);
A = A - repmat(meanA,size(A,1),1);
error=zeros(4,1);
k=1;
for i=p
    [prinComponents, weightCols] = pca(A, i);
    temp = prinComponents*weightCols;
    error(k) = norm(A-temp,'fro');
    name=[num2str(i),'-1'];
    figure('NumberTitle', 'off', 'Name', name,'visible','off');
    show_fig(temp(1,:),16);
    saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
    name=[num2str(i),'-2'];
    figure('NumberTitle', 'off', 'Name', name,'visible','off');
    show_fig(temp(2,:),16);
    saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));
    k = k+1;

end
name='Reconstruction error';
figure('NumberTitle', 'off', 'Name', name,'visible','off');
plot(p,error);
xlabel('p');
ylabel('Reconstruction error');
title('Reconstruction error');
saveas(gcf, sprintf('%s/%s.jpg', result_folder, name));