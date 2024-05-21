x=0:0.01:5;
f=exp(cos(x));
x_nodes=linspace(0,5,15);
f_nodes=exp(cos(x_nodes));
plot(x_nodes,f_nodes,'rx')
hold on
plot(x,f,'b')
interval=0:0.01:5;
for k= 1:length(interval)
  N(k)=Newton1(x,f,interval(k));
end
plot(interval,N,'b')
