y = @(x)x.^3 - 3*x + 2;
x1 = -4;
x2 = -4.1;
xnew=0;
err=0;
arrError=[];
counter=1;

while true
    
    xnew = x2 - ( (y(x2)*(x2-x1))/(y(x2) - y(x1)) );
    
    err = abs(((xnew - x2)/xnew));
    arrError(counter)=err;
    
    if err<0.01
        break;
    end
    
    counter= counter + 1;
    x1=x2;
    x2=xnew;
end

disp('Iteration: ')
disp(counter)
disp('root: ')
disp(xnew)
a=1:counter;
plot(a,arrError);