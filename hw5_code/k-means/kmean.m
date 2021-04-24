function [C,idx] = kmean(X, K)
%%random select initial centroids
C = datasample(X,K);
C1 = C;
idx = zeros(size(X,1));
while 1
    count=zeros(K,1);
    allsum=zeros(K,2);
    for i=1:size(X,1)
        limit = inf;
        for k=1:K
            temp = sqrt((X(i,1)-C(k,1)).^2+(X(i,1)-C(k,1)).^2);
            if temp < limit
                limit = temp;
                idx(i) = k;
            end
        end
        count(idx(i)) = count(idx(i)) + 1;
        allsum(idx(i),1)=allsum(idx(i),1)+X(i,1);
        allsum(idx(i),2)=allsum(idx(i),2)+X(i,2);

    end
    for k=1:K
        C(k,1)=allsum(k,1)/count(k);
        C(k,2)=allsum(k,2)/count(k);
    end
    if(C==C1)
        break;
    else
        C1=C;
    end
end
end
