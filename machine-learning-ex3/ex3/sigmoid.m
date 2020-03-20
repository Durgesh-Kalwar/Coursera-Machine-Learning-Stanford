function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.
[m,n]=size(z);
g = zeros(size(z));
  for i=1:m
    for j=1:n
      g(i,j)=1/(1+e**(-z(i,j)));
    endfor
    
  endfor
%g = 1.0 ./ (1.0 + exp(-z));
end
