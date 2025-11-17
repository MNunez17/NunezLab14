

x = 0:0.01:10;

% Original function y = 5*x^2*exp(-0.2x)*sin(x)
y = 5 .* (x.^2) .* exp(-0.2 .* x) .* sin(x);

n = length(x);

% Central difference derivative
der = (y(3:n) - y(1:n-2)) ./ (x(3:n) - x(1:n-2));
x_mid = x(2:n-1);

% Plots
figure;

subplot(2,1,1);
plot(x, y);
grid on;
xlabel('x');
ylabel('f(x)');
title('Original Function f(x) = 5x^2 e^{-0.2x} sin(x)');
xlim([0 10]);

subplot(2,1,2);
plot(x_mid, der);
grid on;
xlabel('x');
ylabel('f''(x) (central diff)');
title('Estimated Derivative of f(x)');
xlim([0 10]);
