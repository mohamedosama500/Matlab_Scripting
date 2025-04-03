%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Concatenation Methods

A = magic(3)
B = ones (3,2)
C = [A, B]
D = [A; B']
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Preallocation

tic
%instead of using x = 0; , it will take more time
x= zeros(1, 1000000);
for k = 2: 1000000
    x(k) = x(k-1) +5;
end

toc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Access data in a cell array
c = { 'one', 'two' 'three';1,2,3};
Data = c(1,2)
class(Data)
c(1,1:3) = {'first','second','third'}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%numeric array F that is a sequence of 30 numbers starting with 0.5 and with a step of 0.25
F = 0.5:0.25:0.5 + 0.25*(30-1);
%OR
F = linspace(0.5, 0.5 + 0.25*(30-1), 30);
disp(F);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Matrix indexing:
 N = [2 4 9; 4 9 8; 3 7 1]
%Acces using row-column subscripts:
 N(3,2)
 %The colon : operator is used to reshape the data into a single column,
 %In this case, the elements are stacked column-wise, not row-wise, when reshaped into a column vector.
 N(:)
 %In MATLAB, matrices are stored in column-major order. When you access N(6)[Sixth element starts from 1 indexing not 0,
 %it treats the matrix as a single column vector formed by stacking the columns of the matrix:
 N(6)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 % vector of 100 evenly spaced points in the interval [-6,6].
 y = linspace(-6,6)
 %vector of 7 evenly spaced points in the interval [-6,6].
 y1 = linspace(-6,6,7)
 
 %numeric array B that is a sequence of 29 numbers starting with 0.5 and with a step of 0.25
 
 B = 0.5:0.25: (0.5+(29-1)*0.25)
  
 %OR
 
 B = linspace(0.5, (0.5+(29-1)*0.25), 29)

 % generates a row vector y of 50 logarithmically spaced points between decades 10^-6 and 10^6.
 y = logspace(-6,6)
 % generates 7(n) points between decades 10^-6 and 10^6.
 y1 = logspace(-6,6,7)
 %generate square matrix of zeros 4*4
 X1 = zeros(4)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %Indexing using row-column subscripts
 
 B = [2 6 9; 4 2 8; 3 5 1]
 B(3,2)
  
 %Indexing using Linear indexing
 
 B(6
 B(:)
 
 %Converting row-column subscripts to linear indexing and vice versa
 
 linearindex = sub2ind( size(B), 3, 2)
 
 [row col] = ind2sub(size(B), 6)
 
 
 %Access multiple element in matrix
  
 B(1:3, 2) % row vector access
 B(1:3:9) % (Uses linear indexing), where 3 is the step and 1,9 are start and end indexing
 A(:, 2) % All elements on the second column
 
 %One array as the index into another array
 
 B = 5:5:50
 C = [1 3 6 7 10]; 
 B(C)% result will be according to numbers of C, 5 15 30 35 50
 
 %end keyword act as last element in an array
 
 B(1:3:end)
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %Logicals in Array Indexing
 B = [1 2 3; 4 5 6; 7 8 9] 
 C = logical([0 1 0; 1 0 1; 0 0 1]); 
 A(C)%Output will be one dimensional vector [4 2 6 9]
 
 B(B>7)%Logical indexing also, result of B will be one dimensional vector [8 9]
 
 % matrix having at least one dimension equal to zero is called an empty matrix
 A = []; %Of size 0*0, class double
 
 A([1,end], [1,end])
 %A([1,end], [1,end]) selects rows 1 and end (which is 10 for a 10x10 matrix), and columns 1 and end. This returns the 4 corner elements:
 %A(1,1) (top-left)
 %A(1,end) (top-right)
 %A(end,1) (bottom-left)
 %A(end,end) (bottom-right)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 C = magic(3); %creates a 3x3 magic square.
 D = 2*ones(3,1); %creates a 3x1 column vector full of 2's.
 C + D % Since D is 3x1, MATLAB will broadcast/expand D across the columns (auto-replication), Each row of C gets +2.
 
 c = [10 20 30];
 d = [1; 2; 3];
 c * d
 %c is 1x3, d is 3x1.
 %c * d = dot product ? result is a scalar (1x1):
 %= (10*1) + (20*2) + (30*3)
 %= 10 + 40 + 90
 %= 140
 
 c .* d
 
%c = [10 20 30] (1x3)
%d = [1; 2; 3] (3x1)
%? This will throw an error because c and d are not the same size (1x3 vs 3x1), and element-wise multiplication requires matching dimensions.
 
 c .* d'
 
%Now both c and d' are 1x3,  output now is [10*1, 20*2, 30*3]
 
 c -d
 
%Since a is 1x3 and b is 3x1, MATLAB will automatically expand both vectors into a 3x3 matrix (due to implicit expansion aka broadcasting).
%a - b =
     %1-2   3-2   5-2
     %1-4   3-4   5-4
     %1-6   3-6   5-6

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Cell array:
A = {'two', 'four', 'six';
     2, 4, 6};
%indexing with Smooth Parentheses, ()
Data = A(1, 2)
class(Data)%cell
%indexing with curly braces, {}
Data = A{1, 2}%char
class(Data)
%extract specific group of cells if each cell contains the same data type
%[] is used for the concatenation process
%A{2,:} extract the content of all elements in row 2
nums = [A{2,:}]

%Note: () in cells can be used to replace values inside cells through
%indexing using () but with the same type of cells like that:

A(1, 1:3) = {'eight', 'ten', 'nine'}

%But indexing using {} retrieve actual data inside cells.
A{1,1}= 'eight'


