X=generate_data();
%[idx,C1] = kmeans(X, 3);
%[C1,idx1] = kmean(X, 4);
[C2,idx2] = spectral(X, 4);
%disp(C1);
%disp(C2);
%visualize_data(X,idx1);
disp(size(X));
disp(size(idx2));
visualize_data(X,idx2);
% plot(C1(:,1),C1(:,2),'ko',...
%         'LineWidth',2,...
%     'MarkerSize',5,...
%     'MarkerEdgeColor','k',...
%    'MarkerFaceColor',[0.5,0.5,0.5])
set(gca,'linewidth',2);
ylabel('Feature 1','fontsize',12);
xlabel('Feature 2','fontsize',12);
title('K-means-spectral','fontsize',12);

