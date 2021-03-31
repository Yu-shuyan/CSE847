function [accuracy] = acc(w, x , yval)
  m = size(yval,1);
  Features=size(x,2);
  acc = 0;
  for i = 1:m
    xx=x(i,1:Features)';
    yy=yval(i);
    pred=1/(1+exp(-w * xx));
    if pred>0.5 && yy==1
        acc=acc+1;
    end
    if pred<=0.5 && yy==0
        acc=acc+1;
    end
  end
  accuracy = acc/m;
  
end
