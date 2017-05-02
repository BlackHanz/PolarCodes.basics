function [ x ] = interpolation_inverse( y )
%The inverse of the function interpolation by bisection method.
%x¡Ê(0,50)

%According to the graph of the interpolation function,this function do the
%biseciton method to obtain its inverse function.The interpolation
%function's value at 10 is a reference to half divide the inputs range,and
%the iteration times of 20 is an emprical value.

base=interpolation(10);
iteration_times=30;

if y<0
    error('error: input must be a positive scalar');
end

if y>=base
    anchor_1=0;
    anchor_2=10;
    for i=1:1:iteration_times
        x=(anchor_1+anchor_2)/2;
        if y>=interpolation(x)
            anchor_2=x;
        else
            anchor_1=x;
        end
    end
else
    anchor_1=10;
    anchor_2=100;
    for i=1:1:iteration_times
        x=(anchor_1+anchor_2)/2;
        if y>=interpolation(x)
            anchor_2=x;
        else
            anchor_1=x;
        end
    end
end

end

