% Inputs:
% a : an array from 1 to the length
% x : the number to evaluate at
% d : boolean where 0 evaluates the polynomial and 1 evaluates the
%     derivative
function output = horner(a, x, d)

% if d is neither 0 nor 1 then throw an error to the user
if (d ~= 0 && d ~= 1)
    % print the following text
    disp('Error: d must be either 0 or 1. Please try again');
end

% l : length of the array a
l = length(a);

% y : the output for evaluating the polynomial at x
y = a(1); % initialize with the first coefficient of the polynomial

% yp : the output for evaluating the derivative at x
yp = 0; % initialize with 0

% from i to the length of a[]
% i starts at 2 because the leading coefficient is already initialized
%   using y = a(1)
for i = 2:l
    % yp uses the remainder from y and adds that to the previous total that
    %   is multiplied by the point being evaluated
    yp = x * yp + y;
    % y takes the coefficient and adds it to the previous total that is
    %   then multiplied by the point being evaluated
    y  = x * y + a(i);
end

% if d is 0
if (d == 0)
    % the output will be the evaluated polynomial
    output = y;
else
    % if d is 1
    if (d == 1)
        % the output will be the evaluated derivative
        output = yp;
    end
end
