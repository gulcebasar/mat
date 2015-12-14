y = @(x)sin(x);

arr9=[0 pi/4 pi/3 pi/2 pi 7*pi/6 3*pi/2 5*pi/3 2*pi];
arr9_360=[];

L0 = @(x) (x-arr9(2))/(arr9(1)-arr9(2)) * (x-arr9(3))/(arr9(1)-arr9(3)) * (x-arr9(4))/(arr9(1)-arr9(4)) * (x-arr9(5))/(arr9(1)-arr9(5)) * (x-arr9(6))/(arr9(1)-arr9(6)) * (x-arr9(7))/(arr9(1)-arr9(7)) * (x-arr9(8))/(arr9(1)-arr9(8)) * (x-arr9(9))/(arr9(1)-arr9(9));
L1 = @(x) (x-arr9(1))/(arr9(2)-arr9(1)) * (x-arr9(3))/(arr9(2)-arr9(3)) * (x-arr9(4))/(arr9(2)-arr9(4)) * (x-arr9(5))/(arr9(2)-arr9(5)) * (x-arr9(6))/(arr9(2)-arr9(6)) * (x-arr9(7))/(arr9(2)-arr9(7)) * (x-arr9(8))/(arr9(2)-arr9(8)) * (x-arr9(9))/(arr9(2)-arr9(9));
L2 = @(x) (x-arr9(1))/(arr9(3)-arr9(1)) * (x-arr9(2))/(arr9(3)-arr9(2)) * (x-arr9(4))/(arr9(3)-arr9(4)) * (x-arr9(5))/(arr9(3)-arr9(5)) * (x-arr9(6))/(arr9(3)-arr9(6)) * (x-arr9(7))/(arr9(3)-arr9(7)) * (x-arr9(8))/(arr9(3)-arr9(8)) * (x-arr9(9))/(arr9(3)-arr9(9));
L3 = @(x) (x-arr9(1))/(arr9(4)-arr9(1)) * (x-arr9(2))/(arr9(4)-arr9(2)) * (x-arr9(3))/(arr9(4)-arr9(3)) * (x-arr9(5))/(arr9(4)-arr9(5)) * (x-arr9(6))/(arr9(4)-arr9(6)) * (x-arr9(7))/(arr9(4)-arr9(7)) * (x-arr9(8))/(arr9(4)-arr9(8)) * (x-arr9(9))/(arr9(4)-arr9(9));
L4 = @(x) (x-arr9(1))/(arr9(5)-arr9(1)) * (x-arr9(2))/(arr9(5)-arr9(2)) * (x-arr9(3))/(arr9(5)-arr9(3)) * (x-arr9(4))/(arr9(5)-arr9(4)) * (x-arr9(6))/(arr9(5)-arr9(6)) * (x-arr9(7))/(arr9(5)-arr9(7)) * (x-arr9(8))/(arr9(5)-arr9(8)) * (x-arr9(9))/(arr9(5)-arr9(9));
L5 = @(x) (x-arr9(1))/(arr9(6)-arr9(1)) * (x-arr9(2))/(arr9(6)-arr9(2)) * (x-arr9(3))/(arr9(6)-arr9(3)) * (x-arr9(4))/(arr9(6)-arr9(4)) * (x-arr9(5))/(arr9(6)-arr9(5)) * (x-arr9(7))/(arr9(6)-arr9(7)) * (x-arr9(8))/(arr9(6)-arr9(8)) * (x-arr9(9))/(arr9(6)-arr9(9));
L6 = @(x) (x-arr9(1))/(arr9(7)-arr9(1)) * (x-arr9(2))/(arr9(7)-arr9(2)) * (x-arr9(3))/(arr9(7)-arr9(3)) * (x-arr9(4))/(arr9(7)-arr9(4)) * (x-arr9(5))/(arr9(7)-arr9(5)) * (x-arr9(6))/(arr9(7)-arr9(6)) * (x-arr9(8))/(arr9(7)-arr9(8)) * (x-arr9(9))/(arr9(7)-arr9(9));
L7 = @(x) (x-arr9(1))/(arr9(8)-arr9(1)) * (x-arr9(2))/(arr9(8)-arr9(2)) * (x-arr9(3))/(arr9(8)-arr9(3)) * (x-arr9(4))/(arr9(8)-arr9(4)) * (x-arr9(5))/(arr9(8)-arr9(5)) * (x-arr9(6))/(arr9(8)-arr9(6)) * (x-arr9(7))/(arr9(8)-arr9(7)) * (x-arr9(9))/(arr9(8)-arr9(9));
L8 = @(x) (x-arr9(1))/(arr9(9)-arr9(1)) * (x-arr9(2))/(arr9(9)-arr9(2)) * (x-arr9(3))/(arr9(9)-arr9(3)) * (x-arr9(4))/(arr9(9)-arr9(4)) * (x-arr9(5))/(arr9(9)-arr9(5)) * (x-arr9(6))/(arr9(9)-arr9(6)) * (x-arr9(7))/(arr9(9)-arr9(7)) * (x-arr9(8))/(arr9(9)-arr9(8)) ;

f9 = @(x) (L0(x)*y(arr9(1))) + (L1(x)*y(arr9(2))) + (L2(x)*y(arr9(3))) + (L3(x)*y(arr9(4))) + (L4(x)*y(arr9(5))) + (L5(x)*y(arr9(6))) + (L6(x)*y(arr9(7))) + (L7(x)*y(arr9(8))) + (L8(x)*y(arr9(9)));

counter9=1;

for n9=0:pi/180:2*pi
    arr9_360(counter9)=f9(n9);
    counter9=counter9+1;
end
    
a9 = 0 : pi/180 : 2*pi;
plot(a9,arr9_360,'m');

