function [ y ] = interpolation( x )
%Interpolation function to assist the GA polar codes construction.
if x<=0
    error('error: input x must a positive scalar');
else
    if x<=10
        y=exp(-0.4527*x^0.86+0.0218);
    else
        y=exp(-x/4)*(1-10/(7*x))*sqrt(pi/x);
    end
end

end

