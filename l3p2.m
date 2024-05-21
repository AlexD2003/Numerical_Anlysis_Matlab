%def nodes as ints
nodes = 1:1:178;

%sqrt of each node
y = sqrt(nodes);

%length
len = length(nodes);

%transpose
f = [y'];

%approx value chosen
approx = 178;

%iteration
for i = 1:len
    for j = 1:i-1
        %determinant for Aitken interpolation
        detAitken = det([f(j,j), nodes(j) - approx; f(i,j), nodes(i) - approx]);
        %det next value
        f(i,j+1) = 1 / (nodes(i) - nodes(j)) * detAitken;
    end
end

result = f(len,len);
result
