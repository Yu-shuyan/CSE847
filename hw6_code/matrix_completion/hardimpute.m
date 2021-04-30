function [X_complete] = hardimpute(X_missing, Omega, r) % Input:
% X missing -- a m-by-n input matrix, only values at Omega
       %    Omega     -- a m-by-n binary matrix, indicating location of the missing values
% r -- rank
[m,n] = size(X_missing);
z_new = zeros(m,n);
z_old = ones(m,n);
index_new = ones(m,n)-Omega;
while z_old ~= z_new
    z_old = z_new;
    z_old_proj = z_old.*index_new;
    z_new = rank_k(X_missing+z_old_proj,r);
end
X_complete = z_new;
end

