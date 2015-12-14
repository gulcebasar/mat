f = @(x) 1./(1+(x.^2));

a=0;
b=4;

y = @(h) (h/3)* ((f(a) + (4*f((a+b)/2)) + f(b)));

q = integral(f,a,b);


err1 = ((q-y(1))/q)*100;
disp('Error for h=1: ')
disp(err1)

err2 = ((q-y(0.5))/q)*100;
disp('Error for h=0.5: ')
disp(err2)