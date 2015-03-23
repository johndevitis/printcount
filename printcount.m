function printcount(i, n)
% PRINTCOUNT Print progress count to command window
%
%  USAGE: printcount(i, n)
% __________________________________________________________________________
%  INPUTS
%	i: current count   
%	n: total count
% __________________________________________________________________________
%  EXAMPLE USAGE
%   myarray = 1:42; 
%   fprintf('Count: '); 
%   for i = 1:length(myarray) 
%       printcount(i, length(myarray));
%       pause(.1);
%   end
%   fprintf('\n'); 
%       

% ---------------------- Copyright (C) 2015 Bob Spunt ----------------------
%	Created:  2015-03-17
%	Email:    spunt@caltech.edu
% __________________________________________________________________________
if nargin < 2, disp('USAGE: printcount(i, n)'); return; end
nd  = length(num2str(n)); 
f   = sprintf('%%0%dd', nd); 
b   = repmat('\b', 1, nd*2+1);
if i>1, fprintf([b f '/' f], i, n);
else    fprintf([f '/' f], i, n); 
end
