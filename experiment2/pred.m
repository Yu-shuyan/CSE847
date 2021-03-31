function [score] = pred(w,x)
  m = size(x,1);
  Features=size(x,2);
  score = zeros(m,1);
  for i = 1:m
    xx=x(i,1:Features)';
    score(i)=1/(1+exp(-w' * xx));
  end
end

