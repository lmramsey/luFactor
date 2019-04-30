%Lauren Ramsey 
%LU Factorization Algoritm 
function [P, L, U] = luFactor(A)
%"fuFactor" function is an algorithm that outputs the LU facotrization and
%pivoting matrix of an inputed matrix [A] to solve a system of equations.
%   The inputs are : "A", which is a matrix of the coefficients in a system
%   of equations. The outputs are: "L", which is a lower triangular matrix 
%   of the lower limit of [A], "U", which is an upper triangular matrix of
%   the upper limit of [A], (where [A]=[L][U]), and "P", which is the 
%   patial pivot matrix of [A].

% Number of arguments erorr:
if nargin>1
    error 'Too many inputs were entered. Please enter single matrix [A].'
end 

%define how large [A] is:
m=size(A);

%Partially pivot matrix A to get the largest number in a11 through a1n in 
%a11 using the least number of steps possible. 
P=eye(m);
[~,idx]=sortrows(abs(A),1,'descend');
APrime=A(idx,:);


% %Now that [A] has been pivoted, calulate the matrix [P]. The built in lu 
%function can be used to find the [L] and [U] facorization og [P]
P=A/APrime;
[L, U] = lu(APrime);

%Display outputs of the function:
P
L
U
end

