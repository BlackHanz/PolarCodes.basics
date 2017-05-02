function [ p ] = InfoPositions( N,K,EdB )
%INFO_BITS_SELECTION Return an array of size 1*N of 0 and 1 which
%corresponds to the frozen bit and information bit respectively.

F = Cons_GA( N,K,EdB );
p=ones(1,N); 
for i=1:1:N-K
    p(F(i))=0;
end
p=logical(p);

end

