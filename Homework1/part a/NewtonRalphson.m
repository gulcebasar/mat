y = @(x)x.^3 - 3*x + 2;
dy = @(x)3*x.^2 - x;
xold = -4;
xnew = 0;
err=0;
arrError=[];
counter=1;

while true
    xnew = xold - (y(xold)/dy(xold));
    err = abs(((xnew - xold)/xnew));

    arrError(counter)=err;
    
    if err<0.01
        break;
    end

    counter= counter + 1;
    xold=xnew;
end
disp(counter)
disp(xnew)
a=1:counter;
plot(a,arrError);