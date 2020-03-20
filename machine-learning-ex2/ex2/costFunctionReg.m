function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
%m = length(y); % number of training examples
[m,n]=size(X);
% You need to return the following variables correctly 
J = 0;
S=0;
grad = zeros(size(theta));
z=X*theta;
g=sigmoid(z);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

for i=2:n
  S=S+(lambda/(2*m))*(theta(i))^2;
endfor

for i=1:m
  J=J-(1/m)*(y(i)*(log(g(i)))+(1-y(i))*(log(1-g(i))));
endfor
J=J+S;

for j=1:n
  for i=1:m
      grad(j)=grad(j)+(1/m)*(g(i)-y(i))*(X(i,j)); 
  endfor
  if j!=1
    grad(j)=grad(j)+(lambda/m)*theta(j); 
  endif
  
endfor



% =============================================================

end
