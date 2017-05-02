function [ F ] = Cons_GA( N,K,EbN0 )
%2017/4/25 Coded by WuKaiQuan in Hunan University.
%CONS_G- Polar code construction by the Gaussian approximation.
%Reference:"Comparative Study of Polar Codes Construction for the AWGN channel",PCC-3
%INPUT:N,K,and design-SNR EdB=(REb/N0 in dB)
%OUTPUT:F¡Ê(0,1,2,...,N-1) with |F|=N-K

%The algorithms is to exclude K best among N possible polar bit-channels
%at the design signal-to-noise-ratio (design-SNR) in terms of bit 
%error rate (BER),and the output is the index of the frozen bit set. 

% EdB=EbN0+10*log10(K/N);
S=2/(N/(2*10^(EbN0/10)*(K-24)));%10^(EdB/10);
n=log2(N);
z3=zeros(1,N);
z3(1)=S;

for j=1:1:n
    u=2^j;
    for t=1:1:u/2
        T=z3(t);
        temp=1-(1-interpolation(T))^2;
        z3(t)=interpolation_inverse(temp);
        z3(u/2+t)=2*T;
    end
end

F=indices_least_elements(z3,N-K);

end

