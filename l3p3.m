x=[1.2,1.6,2,2.4,3.1,4];
f=[0.07918,0.20412,0.30103,0.38021,0.49136,0.60206];
t=[2.5,3.26];
for k= 1:length(t)
  rez(k)=Newton1(x,f,t(k))
endfor



##plot(x,f,'rx')
##hold on
##interval=1.2:0.01:4;
##for k=1:length(interval)
##  N2(i)=Newton1(x,f,interval(i));
##end
##plot(interval,N2)



i = 10 : 1 : 30
y =i./10;
g=log10(y);
for j=1:length(y)
  v(j)=Newton1(x,f,y(j))
endfor
E=max(abs(g-v))
