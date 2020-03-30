function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
unique_idx=unique(idx);
[m,n]=size(X);
% You need to return the following variables correctly.
centroids = zeros(K, n);
%[a,b]=hist(idx,unique(idx));

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
for k=1:K
  [i,j]=find(idx==unique_idx(k));
  centroids(k,:)=mean(X(i,:));
endfor
%temp1=zeros(1,n);
%temp2=zeros(1,n);
%temp3=zeros(1,n);
%for i=1:m
%  if idx(i)==1
%   temp1=temp1+X(i,:);
%  elseif idx(i)==2
%   temp2=temp2+X(i,:);
% elseif idx(i)==3
%   temp3=temp3+X(i,:);
% endif
  
%endfor

%centroids(1,:)=temp1/a(1);
%centroids(2,:)=temp2/a(2);
%centroids(3,:)=temp3/a(3);

% =============================================================


end

