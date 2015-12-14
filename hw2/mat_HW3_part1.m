fileID = fopen('/Users/sukasidil/Documents/MATLAB/dataset.txt','r');
A = fscanf(fileID,'%f');
%disp(A)

c=1;

for a=1:993
    
    d=c;
    for b=1:7
       X(a, b)= A(d);
       d=d+1;
    end
    
    c=c+1; 
end

for e=8:1000
    new_A1(e-7) = A(e);
end
    
B = (inv(X'*X))*(X'* new_A1');

y = @(x) B(1)*A(x-1) + B(2)*A(x-2) + B(3)*A(x-3) + B(4)*A(x-4) + B(5)*A(x-5) + B(6)*A(x-6) + B(7)*A(x-7);

f1=8:1000;
plot(f1,y(f1),'r');  
hold on;
plot(f1,A(f1),'b');

MSE1=0;
for g=8:1000
    MSE1 = MSE1 + (A(g) - y(g)).^2 ;
end

MSE1 = MSE1/993;
display(MSE1);



f2=1000:1525;
plot(f2,y(f2),'g');  
hold on;
plot(f2,A(f2),'c');

MSE2=0;
for g=1000:1525
    MSE2 = MSE2 + (A(g) - y(g)).^2 ;
end

MSE2 = MSE2/526;
display(MSE2);

