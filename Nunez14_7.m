m = 1000;
c = 500; 
f_list =  [20000 40000 60000 80000];

 fprintf('Rocket Propulsion Application\n');
fprintf('Mass = %d kg, Resistance Constant = %d N*s/m\n\n', m, c);

% Velocity formula:
t  = 0:0.1:10;

figure ;
hold  on;

for f = f_list
    v =(f/c) .* (1 - exp(-(c/m).*t));
 plot(t,  v, 'LineWidth', 1.4);

    fprintf('Plotted velocity for thrust f = %d N\n', f);
end

grid on;
xlabel('Time (s)');
ylabel('Velocit,y (m/s)');
title('Rocket Velocity for Different Thrust Values');
legend('20,000 N','40,000 N','60,000 N','80,000 N', 'Location','best');
hold off;

