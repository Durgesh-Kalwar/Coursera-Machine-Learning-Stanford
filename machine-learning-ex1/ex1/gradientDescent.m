function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
p=(alpha/m);
%disp(p);

for iter = 1:num_iters
  temp=zeros(2,1);

    % 
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
%    A=(X*theta-y);
%    theta=theta-((X')*A).*p;
     for j=1:2
       for i=1:m
         temp(j)=temp(j)-[X(i,1:2)*theta-y(i)]*X(i,j)*(alpha/m);
       endfor
       temp(j)=temp(j)+theta(j);
     endfor
    % ============================================================
      theta=temp;
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

endfor
    

end
%for iter=1:1
%temp=zeros(2,1);
%for j=1:2
 % temp1(j)=temp(j);
%endfor
%for i=1:m
%temp(j)=temp(j)+theta(j)-(X(i,1:2)*theta-y(i))*X(i,j)*(alpha/m);
%endfor
%endfor
%theta=temp;
%endfor