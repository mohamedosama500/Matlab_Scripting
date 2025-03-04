%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Concatenation Methods

A = magic(3)
B = ones (3,2)
C = [A, B]
D = [A; B']
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Preallocation

tic
%instead of using x = 0; , it will take more time
x= zeros(1, 1000000);
for k = 2: 1000000
    x(k) = x(k-1) +5;
end

toc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Access data in a cell array
c = { 'one', 'two' 'three';1,2,3};
Data = c(1,2)
class(Data)
c(1,1:3) = {'first','second','third'}