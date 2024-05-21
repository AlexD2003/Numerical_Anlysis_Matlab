x=[1,2,3,4,5];
f=[30,26,22,32,28];
t=3.5;
rez = Newton1(x,f,t)

plot(x,f,'rx')
hold on
interval=1:0.01:5;
for k= 1:length(interval)
  N(k)=Newton1(x,f,interval(k));
end
plot(interval,N,'b')


