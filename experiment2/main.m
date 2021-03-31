load ad_data.mat;
par = [1e-8, 0.01, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];
AUC=[];
num_fea = [];
for i=par
    [w, c] = logistic_l1_train(X_train, y_train, i);
    scores = pred(w,X_test);
    [X,Y,T,AUC(end+1)] = perfcurve(y_test,scores,1);
    name = ['ROC for Classification by Logistic Regression, when par=',' ',num2str(i)];
    figure('NumberTitle', 'off', 'Name', name);
    plot(X,Y);
    xlabel('False positive rate') 
    ylabel('True positive rate')
    title(name);
    selected = find(w~=0);
    num_fea(end+1) = size(selected,1);
end
plotdata(par, AUC, num_fea);

