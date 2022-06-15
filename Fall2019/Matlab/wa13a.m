% Riley Payung
% 11/25/2019
% WA13 Part 1

% clear workspace
clear;clc

% variable declaration
mycolors = [0 0 0; 1 1 1; 1 1 0]; % color scheme.
patterncount = 0; % count for the number of patterns found.
A = [1 1 0 1 1 0 0 1 0 1 0 1 0 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1;
     0 0 1 0 1 1 0 1 1 0 0 0 0 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 1 1 1 0 1 0;
     1 1 1 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 0 0;
     1 1 0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 0 1 0 1 1 0 1 1 1 0 0 0 0 0 0 1 1 0;
     0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 0 1 1 0 1 0 1 0 0 1 1 0 1 1 1 1 0 0 0;
     1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 1 0 0 0;
     1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 0 0 1 0 1 1 0;
     1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 1;
     0 1 1 0 0 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 1 1 1 0 0 1 1 0 1 0 1;
     1 1 0 1 0 0 0 1 1 1 0 0 1 1 1 0 0 1 0 0 0 0 1 0 1 0 1 0 1 1 1 0 1 1 1;
     1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 0 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0;
     1 1 1 1 0 0 1 1 1 0 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 1 0 1;
     1 0 0 1 0 0 1 1 0 1 1 1 1 0 0 1 1 1 0 0 1 0 1 1 0 1 0 1 1 1 0 0 1 1 1;
     0 0 0 1 0 0 1 1 1 1 1 1 1 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 1;
     0 1 1 0 1 0 1 0 0 0 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 1 1 0;
     0 1 0 0 0 1 0 0 0 1 1 1 0 1 0 1 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0;
     1 0 1 0 0 0 0 0 1 0 1 1 1 1 0 0 0 1 1 1 0 1 1 0 1 0 1 0 1 1 1 0 0 0 1;
     1 1 0 1 0 1 1 0 0 1 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1;
     1 1 0 1 1 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 1 0 1 1;
     0 1 0 0 1 1 1 0 0 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 0 0 0 1 1 0 0 0 0;
     0 0 1 0 1 0 0 1 1 0 0 1 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 1 1 1;
     0 0 0 0 0 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 1 0 1 1 0 1 0 1 0 0 1 0 0 1 0;
     1 1 0 1 1 1 1 0 1 0 1 0 0 0 0 1 0 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1;
     0 1 0 0 0 0 1 0 0 1 0 1 0 1 1 1 1 1 1 0 1 0 1 0 0 0 0 1 0 0 0 1 1 1 1;
     0 0 1 0 0 1 0 1 1 0 0 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 1 0 0 1 1 0 1 0 1;
     1 0 1 0 0 1 1 1 1 0 0 0 1 1 1 0 0 1 0 1 0 1 1 1 0 1 0 1 0 1 0 0 0 0 1;
     0 1 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 1 1 1 1;
     1 0 1 1 1 1 1 0 1 1 0 0 1 0 0 1 1 1 0 0 1 1 0 1 0 1 0 0 0 1 1 0 0 1 1;
     1 1 1 1 1 1 0 0 0 0 1 0 0 0 1 1 0 1 0 1 1 1 0 0 0 1 1 0 0 0 0 0 1 0 0;
     0 0 1 1 1 1 0 0 1 0 0 1 0 0 0 1 0 1 1 0 0 1 1 1 1 1 0 1 0 0 1 1 0 0 0;
     1 0 1 0 1 0 0 0 1 1 0 1 0 0 0 0 1 0 1 0 1 1 0 1 0 0 0 1 1 0 0 1 0 1 1;
     0 1 1 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 1 0 0 0 1 0 1 0 1 0 1;
     0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0;
     1 0 1 1 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 0 1 1 0 1;
     1 1 1 0 0 1 1 0 1 0 0 0 0 1 1 0 1 1 1 0 1 0 1 1 0 0 0 0 1 1 0 1 0 0 1];

% computation section
for i = 1:size(A,1)
    for j = 1:size(A,2)
        if (i == 1 || i == size(A,1) || j == 1 || j == size(A,2))
            % if an edge, dont do anything since we'll get an out of bounds error.
            continue;
        else
            if (A(i,j) == 1 && A(i-1,j-1)== 1 && A(i+1,j+1) == 1 && A(i-1,j) == 1)
                patterncount = patterncount + 1; % count the patterns
                
                % set the values to yellow.
                A(i-1,j-1) = 2;
                A(i-1,j) = 2;
                A(i-1,j+1) = 2;
               
                A(i,j-1) = 2;
                A(i,j) = 2;
                A(i,j+1) = 2;
                
                A(i+1,j-1) = 2;
                A(i+1,j) = 2;
                A(i+1,j+1) = 2;
            end
        end
    end
end

% display section
colormap(mycolors); % set the color patterns (0 for black, 1 for white, 2 for yellow);
fprintf("Number of patterns found: %d",patterncount); % prints the number of patterns found.
imagesc(A); % displays the array of values on the figure.