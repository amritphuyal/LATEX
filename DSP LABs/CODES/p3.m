maxSum=10000;
fibo=fibonacci_numbers(maxSum);
l=tiledlayout(1,1);
str=sprintf('sum of two consecutive numbers less than %d',maxSum);
title(l,{'Fibonacci numbers with', str})
len=length(fibo);
fibo_even=[];
fibo_odd=[];
nexttile
hold on
xlim([0 len])
for i = 1:len
    n=fibo(i);
    if(rem(n,2)==0)
        fibo_even(end+1)=n;
        stem(i,fibo(i),'rs-','Linewidth',1.5)
    else
        fibo_odd(end+1)=n;
        stem(i,fibo(i),'bo-','Linewidth',1.5)
    end
end
xlabel('Index')
ylabel('Fibonacci Number')
legend('Even', 'Odd');
fprintf('Total fibonacci numbers: %d \n', len);
fprintf('Even fibonacci numbers: %d \n', length(fibo_even));
fprintf('Odd fibonacci numbers: %d \n', length(fibo_odd));


%% collect all the fibonacci numbers whose consecutive sum is  less than maxSum i.e 10000
function fibo_numbers = fibonacci_numbers(maxSum)
    f1=0;
    f2=1;
    fibo_numbers=[f1 f2];
    while (f1+f2) < maxSum
        next=f1+f2;
        f1=f2;
        f2=next;  
        fibo_numbers(end+1)=next;
    end
end

