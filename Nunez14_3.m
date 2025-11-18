
% Ask user for coefficients
fprintf('Enter the coefficients of a cubic polynomial as a row vector [a b c d].\n');
p  = input('Coefficients: ');       % Example input: [4 6 2 1]

% constant of integration
y0 = input('Enter the integration constant for that function: ');

% Derivative and integral
dp  = polyder(p);
ip = polyint(p, y0);

%  coefficient arrays
 fprintf('\nDerivative coefficients: [');
fprintf('%g ', dp);
fprintf(']\n');

 fprintf('Integral coefficients: [');

fprintf('%g ', ip);
fprintf(']\n\n');

%  derivative polynomial
fprintf('The derivative of the function is: ');
 print_poly(dp) ;
fprintf('\n');

%  integral polynomial
fprintf(' The integral of the function is: ');
print_poly(ip) ;
fprintf('\n');

% clean polynomial
function  print_poly(c)
    n= length(c);
    for k = 1:n
        coeff = c(k);
        power = n - k;

   if coeff  == 0
            continue;
    end

        % Print sign
        if k  == 1
        if coeff < 0, fprintf('-');
        end
        else
            if coeff < 0
                fprintf(' - ');
            else
                fprintf(' + ');
            end
        end

        %  magnitude abs value
        coeff_abs = abs(coeff);

        % Print polynomial term
        if power == 0
            fprintf('%g',  coeff_abs);
        elseif power == 1
            fprintf('%gx', coeff_abs);
        else
          
            fprintf('%gx^%d', coeff_abs, power);
        end
    end
end
