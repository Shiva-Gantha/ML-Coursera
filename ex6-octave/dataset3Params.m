function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
try_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
table = zeros(64, 3);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

##count = 1;
##model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
##predictions = svmPredict(model, Xval);
##min_error = 1;
##for i = 1:length(try_vec)
##  C_try = try_vec(i);
##  for j = 1:length(try_vec)
##    sigma_try = try_vec(j);
##    model = svmTrain(X, y, C_try, @(x1, x2) gaussianKernel(x1, x2, sigma_try));
##    predictions = svmPredict(model, Xval);
##    error = mean(double(predictions ~= yval))
##    table(count, 1) = error;
##    table(count, 2) = C_try;
##    table(count, 3) = sigma_try;
##    if(error < min_error)
##      C = C_try;
##      sigma = sigma_try;
##      min_error = error;
##    endif
##    count = count + 1;
##  endfor
##end

C = 1.0;
sigma = 0.1;

%C = 30;
%sigma = 0.3000;
% =========================================================================

end
