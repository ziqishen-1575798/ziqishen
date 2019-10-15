clear all; close all; clc
% HW #2 
%%
% Problem 1
% Rolling snake eyes: 1/6 * 1/6 = 1/36
% Rolling sum of sevens: 6/36 = 1/6, since there are 6 combinations that
% could get sum of sevens which out of 36 outcomes in total.
% The probability ratio is 1:6, which rolling sevens will have a higher
% probabbility compare to rolling snake eyes
%%

% Problem 2
% Analytically: 
%     1  2  3  4  5  6
%   +-------------------
% 1 | 2  3  4  5  6  7
% 2 | 3  4  5  6  7  8
% 3 | 4  5  6  7  8  9
% 4 | 5  6  7  8  9 10
% 5 | 6  7  8  9 10 11
% 6 | 7  8  9 10 11 12
% Which is shown there is 36 outcomes in total
% 1 combination of getting sum of 2, probablity: 1/36
% 2 combinations of getting sum of 3, probablity: 2/36
% 3 combinations of getting sum of 4, probablity: 3/36
% 4 combinations of getting sum of 5, probablity: 4/36
% 5 combinations of getting sum of 6, probablity: 5/36
% 6 combinations of getting sum of 7, probablity: 6/36
% 5 combinations of getting sum of 8, probablity: 5/36
% 4 combinations of getting sum of 9, probablity: 4/36
% 3 combinations of getting sum of 10, probablity: 3/36
% 2 combinations of getting sum of 11, probablity: 2/36
% 1 combinations of getting sum of 12, probablity: 1/36
%%
% Numerically
D1 = zeros(201,1);
    for i=1:6
    D1(i+100) = 1/6;
    end
D2 = 0*D1;
for x=0:99
    D2(x+100) = 0;
    for k=0:99
        D2(x+100) = D2(x+100) + D1(k+100)*D1(x-k+100);
    end
end
figure(1);
bar(D2(101:114))
xlabel('Sum of two dice');
ylabel('Probability');
%%
% Problem 3
mean = (2*(1/36)) + (3*(2/36)) + (4*(3/36)) + (5*(4/36)) + (6*(5/36)) + (7*(6/36)) + (8*(5/36)) + (9*(4/36)) + (10*(3/36)) + (11*(2/36)) + (12*(1/36))
variance = ((2-7)^2 * (1/36)) + ((3-7)^2 * (2/36)) + ((4-7)^2 * (3/36)) + ((5-7)^2 * (4/36)) + ((6-7)^2 * (5/36)) + ((7-7)^2 * (6/36)) + ((8-7)^2 * (5/36)) + ((9-7)^2 * (4/36)) + ((10-7)^2 * (3/36)) + ((11-7)^2 * (2/36)) + ((12-7)^2 * (1/36))
%%
%Problem 4
D3 = 0*D1;
for m = 0:99
    D3(m+100) = 0;
    for n = 0:99
        D3(m+100) = D3(m+100)+D2(n+100)*D1(m-n+100);
    end
end
D4 = 0*D1;
for m = 0:99
    D4(m+100) = 0;
    for n = 0:99
        D4(m+100) = D4(m+100)+D3(n+100)*D1(m-n+100);
    end
end
D5 = 0*D1;
for m = 0:99
    D5(m+100) = 0;
    for n = 0:99
        D5(m+100) = D5(m+100)+D4(n+100)*D1(m-n+100);
    end
end
D6 = 0*D1;
for m = 0:99
    D6(m+100) = 0;
    for n = 0:99
        D6(m+100) = D6(m+100)+D5(n+100)*D1(m-n+100);
    end
end
D7 = 0*D1;
for m = 0:99
    D7(m+100) = 0;
    for n = 0:99
        D7(m+100) = D7(m+100)+D6(n+100)*D1(m-n+100);
    end
end
D8 = 0*D1;
for m = 0:99
    D8(m+100) = 0;
    for n = 0:99
        D8(m+100) = D8(m+100)+D7(n+100)*D1(m-n+100);
    end
end
D9 = 0*D1;
for m = 0:99
    D9(m+100) = 0;
    for n = 0:99
        D9(m+100) = D9(m+100)+D8(n+100)*D1(m-n+100);
    end
end
D10 = 0*D1;
for m = 0:99
    D10(m+100) = 0;
    for n = 0:99
        D10(m+100) = D10(m+100)+D9(n+100)*D1(m-n+100);
    end
end
figure(2);
bar(D10(105:165))
xlabel('Sum of two dice');
ylabel('Probability');
%%
% Problem 5
