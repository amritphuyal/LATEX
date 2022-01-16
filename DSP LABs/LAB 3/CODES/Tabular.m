x=[1,0,-1,1,2,1];
n1=[-2,-1,0,1,2,3];
h=[1,1,1,1,1];
n2=[0,1,2,3,4];
nmin=min(min(n1),min(n2));
nx=length(x);
nh=length(h);
n=nmin:nx+nh+nmin-2;

y_tabular=zeros(1,length(n));
prod=x'.*h;
for i = 1:nx
    y_tabular(i:i+nh-1)=y_tabular(i:i+nh-1)+prod(i,:);
end

stem(n,y_tabular,'Linewidth',1.5)
xlabel('n')
ylabel('Value')
title('Tabular method')