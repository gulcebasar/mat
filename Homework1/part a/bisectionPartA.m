y = @(x)x.^3 - 3*x + 2;
xl = -4;
xu = -1;
arrError=[];
err=0;
xm = (xl+xu)/2;
xm_new=0;
counter=1;

while true
    if y(xl)*y(xm)<0
        xu=xm;
    elseif y(xl)*y(xm)>0
        xl=xm;
    end
    xm_new = (xl+xu)/2;
    
    err = abs(((xm_new - xm)/xm_new));
    
    arrError(counter)=err;
    
    if err<0.01
        break;
    end
    
    counter= counter + 1;
    xm=xm_new;
    
end

disp('Iteration: ')
disp(counter)
disp('root: ')
disp(xm_new)
a=1:counter;
plot(a,arrError);