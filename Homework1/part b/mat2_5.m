y = @(x)sin(x);

arr5=[0 pi/4 pi/3 7*pi/6 2*pi];
arr5_360=[];

L0 = @(x) (x-arr5(2))/(arr5(1)-arr5(2)) * (x-arr5(3))/(arr5(1)-arr5(3)) * (x-arr5(4))/(arr5(1)-arr5(4)) * (x-arr5(5))/(arr5(1)-arr5(5));
L1 = @(x) (x-arr5(1))/(arr5(2)-arr5(1)) * (x-arr5(3))/(arr5(2)-arr5(3)) * (x-arr5(4))/(arr5(2)-arr5(4)) * (x-arr5(5))/(arr5(2)-arr5(5));
L2 = @(x) (x-arr5(1))/(arr5(3)-arr5(1)) * (x-arr5(2))/(arr5(3)-arr5(2)) * (x-arr5(4))/(arr5(3)-arr5(4)) * (x-arr5(5))/(arr5(3)-arr5(5));
L3 = @(x) (x-arr5(1))/(arr5(4)-arr5(1)) * (x-arr5(2))/(arr5(4)-arr5(2)) * (x-arr5(3))/(arr5(4)-arr5(3)) * (x-arr5(5))/(arr5(4)-arr5(5));
L4 = @(x) (x-arr5(1))/(arr5(5)-arr5(1)) * (x-arr5(2))/(arr5(5)-arr5(2)) * (x-arr5(3))/(arr5(5)-arr5(3)) * (x-arr5(4))/(arr5(5)-arr5(4));

f5 = @(x) (L0(x)*y(arr5(1))) + (L1(x)*y(arr5(2))) + (L2(x)*y(arr5(3))) + (L3(x)*y(arr5(4))) + (L4(x)*y(arr5(5)));

counter5=1;

for n5=0:pi/180: 2*pi
    arr5_360(counter5)=f5(n5);
    counter5=counter5+1;
end

a5 = 0 : pi/180 : 2*pi;
plot(a5,arr5_360,'g');

hold on;
x_r = 0 : pi/180 : 2*pi;
y_r = sin(x_r);
plot(x_r,y_r,'b');