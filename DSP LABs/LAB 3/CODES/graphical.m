x=[1,0,-1,1,2,1];
n1=[-2,-1,0,1,2,3];
h=[1,1,1,1,1];
n2=[0,1,2,3,4];
nmin=min(min(n1),min(n2));
nx=length(x);
nh=length(h);
n=nmin:nx+nh+nmin-2;
y_graphical=zeros(1,length(n));
[x_folded,n_folded]=sigfold(x,n1);
temp=1;
for i=n
    [x_shift,n_shift]=sigshift(x_folded,n_folded,i);
    [x_multi,n_multi]=sigmulti(x_shift,n_shift,h,n2);
    for j=1 :length(n_multi)
        y_graphical(temp)=y_graphical(temp)+x_multi(j);
    end
    temp=temp+1; 
end

stem(n,y_graphical,'Linewidth',1.5)
xlabel('n')
ylabel('Value')
title('Graphical method')