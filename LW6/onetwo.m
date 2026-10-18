function varargout = onetwo(x)
% ONETWO  Returns sin, or sin and cos of the input data.
%
%   s = onetwo(x)       returns sin(x)
%   [s, c] = onetwo(x)  returns sin(x) and cos(x)
%
%   Input:  x - number, vector or matrix
%   Output: one or two variables (depends on how many are requested)

if nargin ~= 1
    error('Function onetwo needs exactly 1 input argument.');
end

if nargout <= 1
    varargout{1} = sin(x);
elseif nargout == 2
    varargout{1} = sin(x);
    varargout{2} = cos(x);
else
    error('Function onetwo can return maximum 2 outputs.');
end
end