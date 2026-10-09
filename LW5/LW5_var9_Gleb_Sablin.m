%% VAR-9 Gleb Sablin EDIfu25/2 10-09


% Mandatory 
clc; clear; close all;

C = {3.14, 'MATLAB', [true false true], int8([1 2 3])};
celldisp(C)   
len = cellfun(@length, C)

types = cellfun(@class, C, 'UniformOutput', false);
real_check  = cellfun(@isreal, C);              
empty_check = cellfun(@isempty, C);            
is_char     = cellfun(@(a) isa(a,'char'), C);

%%

clear; clc; close all;

m = input('Enter number m: ');
f = input('Choose function (1 - sin, 2 - cos): ');

figure;                                 
for k = 1:15
    x = m : 0.1 : m + 4*pi;

    if f == 1
        y = sin(x);
        name = 'sin';
    else
        y = cos(x);
        name = 'cos';
    end

    disp(['Step ', num2str(k), ': m = ', num2str(m)])
    stem(x, y);                        
    title([name, '(x),  m = ', num2str(m)]);
    xlabel('x'); ylabel([name, '(x)']);
    grid on;

    pause(0.5);                         
    m = m + pi/8;                   
end
                      

%% Complementary

clear; clc;
format compact

s = input('Enter a sentence (with more than one space between words): ', 's');

while isempty(strfind(s, '  '))
    disp('The sentence must contain more than one space between words!')
    s = input('Enter a sentence again: ', 's');
end


c = input('Enter symbol to remove (just press Enter for space): ', 's');
if isempty(c)
    c = ' ';          
else
    c = c(1);         
end

result = '';
count = 0;
for i = 1:length(s)
    if s(i) == c
        count = count + 1;           
    else
        result = [result, s(i)];
    end
end

disp(['Original sentence: ', s])
disp(['Result:            ', result])
disp(['Removed symbols:   ', num2str(count)])

