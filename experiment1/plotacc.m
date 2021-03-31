function [] = plotacc(n,acc)
plot(n,acc);
title('accuracy on the test data');
xlabel('n (size of training data)');
ylabel('accuracy');
end

