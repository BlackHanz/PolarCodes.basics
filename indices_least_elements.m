function [ F ] = indices_least_elements( V, L )
% Find indices of least elements(z3,N-K)
% INPUT: Vector v of dimension |V|*L and integer L
% OUTPUT: An L*1 interger vector containing L indices in {0,1,...,|v|-1}

[~,index]=sort(V);
F=index(1:L);

end

