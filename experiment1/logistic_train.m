function [weights] = logistic_train(data, labels, epsilon, maxiter)
[m1,Features] = size(data);
%learnig rate
delta = 0.1;
lamda=0.2;
theta1=zeros(1,Features);
L=[];
while(maxiter)
    dt=zeros(1,Features);
    loss=0;
    for i=1:m1
        xx=data(i,1:Features);
        yy=labels(i,1);
        h=1/(1+exp(-(theta1 * xx')));
        dt=dt+(h-yy) * xx;
        loss=loss+ yy*log(h)+(1-yy)*log(1-h);
    end
    loss=-loss/m1;
    L=[L,loss];
    
    theta2=theta1 - delta*dt/m1 - lamda*theta1/m1;
    if sum(abs(theta2-theta1))/m1<epsilon
        break;
    end
    theta1=theta2;
    maxiter = maxiter - 1;
end
weights = theta1;
end

