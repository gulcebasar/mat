y = @(x)sin(x);

arr3=[0 pi/3 2*pi];
arr3_360=[];

L0 = @(x) (x-arr3(2))/(arr3(1)-arr3(2)) * (x-arr3(3))/(arr3(1)-arr3(3));
L1 = @(x) (x-arr3(1))/(arr3(2)-arr3(1)) * (x-arr3(3))/(arr3(2)-arr3(3));
L2 = @(x) (x-arr3(1))/(arr3(3)-arr3(1)) * (x-arr3(2))/(arr3(3)-arr3(2));

f3 = @(x) (L0(x)*y(arr3(1))) + (L1(x)*y(arr3(2))) + (L2(x)*y(arr3(3)));

counter3=1;

for n3=0:pi/180: 2*pi
    arr3_360(counter3)=f3(n3);
    counter3=counter3+1;
end
    
a3 = 0 : pi/180 : 2*pi;
plot(a3,arr3_360,'r');


hold on;
x_r = 0 : pi/180 : 2*pi;
y_r = sin(x_r);
plot(x_r,y_r,'b');