function sum = NewtonCotes(func,a,b,n)
%fun为要计算积分的函数，a，b分别为积分的下限和上限，n为柯特斯公式的阶
sum=0;
% 生成柯特斯系数矩阵
Cotescoeff=zeros(7,8);
Cotescoeff(1,:)=[1,1,0,0,0,0,0,0]/2;
Cotescoeff(2,:)=[1,4,1,0,0,0,0,0]/6;
Cotescoeff(3,:)=[1,3,3,1,0,0,0,0]/8;
Cotescoeff(4,:)=[7,32,12,32,7,0,0,0]/90;
Cotescoeff(5,:)=[19,75,50,50,75,19,0,0]/288;
Cotescoeff(6,:)=[41,216,27,272,27,216,41,0]/840;
Cotescoeff(7,:)=[751,3577,1323,2989,2989,1323,3577,751]/17280;

% 生成等距节点
x=zeros(1,n+1);
x(1) = a;
x(n+1) = b;

for i=2:n+1
    x(i)=x(i-1)+(b-a)/n;
end

for k=1:n+1
    sum = sum + Cotescoeff(n,k) * func(x(k));
end 

sum = sum * (b-a);
end
