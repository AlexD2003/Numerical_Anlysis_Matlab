x=0:0.1:2*pi;
f=cos(x);
plot(x,f)
hold on
nodes=[0,pi/2,pi,3*pi/2,2*pi];
f_nodes=cos(nodes);
plots(nodes,f_nodes,'x')
s1=spline(nodes,f_nodes,pi/4)

plot(x,spline(nodes,f_nodes,x))

