load data.txt
load labels.txt
data=[data,ones(size(data,1),1)];
test_x = data(2001:4601,:);
test_y = labels(2001:4601,:);
n = [200,500,800,1000,1500,2000];
accuracy = [];
for j = n
    train_x = data(1:j,:);
    train_y = labels(1:j,:);
    w = logistic_train(train_x, train_y, 1e-5, 1000);
    accuracy(end+1) = acc(w, test_x, test_y);
end
plotacc(n,accuracy)