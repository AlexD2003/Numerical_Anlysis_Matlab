function h = Hermite1(x,f,fd,y);
  m=length(x);
  A=zeros(2*m,2*m);
  D=difDivided(x,f);
  for i=1:m
    z(2*i-1)=x(i);
    z(2*i)=x(i);
    fz(2*i-1)=f(i);
    fz(2*i)=f(i);
  endfor
  A(:,1)=fz;
  for i=1:m
    A(2*i-1,2)=fd(i);
    A(2*i,2)=D(i,2);
  endfor
  for j=3:2*m
    for i=1:2*m-j+1;
      A(i,j)=(A(i+1,j-1)-A(i,j-1))/(z(i+j-1)-z(i));
    endfor
  endfor
  first_line_A=A(1,:);
  p=1;
  s=fz(1);
  for i=1:m-1
    p=p*(y-z(i));
    s=s+p*first_line_A(i+1);
  endfor
  h=s;
endfunction


