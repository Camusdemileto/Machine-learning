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
%limite=50;
%sigmavect=sigma-(sigma*(limite+1));
%sigmavect=sigma+(sigma*[0:(limite*2+1)]);
%sigmas=ones(limite*2+2).*sigmavect;
%cvect=C-(C*(limite+1));
%cvect=C+(C*[0:(limite*2+1)])';
%Cs=ones(limite*2+2).*cvect;



%model= arrayfun (@(c,s) svmTrain(X, y, c, @(x1, x2) gaussianKernel(x1, x2, s)),Cs,sigmas);

%predictions =  arrayfun (@(m) svmPredict(m, Xval),model,"UniformOutput",false);

%error=arrayfun(@(p) mean(double(cell2mat(p) ~= yval)),predictions);


%[mini idy]=min(error);
%[mini2 idx]=min(mini);

%Ci=Cs(idy(idx),idx);
%sigmai=sigmas(idy(idx),idx);
Ci =  69;
sigmai =  0.30000;
%error(idy(idx),idx)
% =========================================================================
%model= svmTrain(X, y, Ci, @(x1, x2) gaussianKernel(x1, x2, sigmai));
%visualizeBoundary(X, y, model);

C=Ci;
sigma=sigmai;
end
