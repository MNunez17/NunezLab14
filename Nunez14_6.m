Tb = 170;
T0 = 70;
tau = 10;

fprintf('Temperature Application\n');
fprintf('Initial Temp = %.1f F, Bath Temp = %.1f F\n\n', T0, Tb);

% Temperature function:
times = [10 20 40];

for i= 1:length(times)
    t  =times(i);
    Tt = Tb + (T0 - Tb)*exp(-t/tau);
 fprintf('Temperature at t = %2d s is %.2f F\n', t, Tt);
end
%TIME TO REACH
T_target = 160;

% Solve eequation
t160  = -tau * log((T_target - Tb)/(T0 - Tb));

fprintf('\nTime to reach %.1f F is %.1f seconds\n\n', T_target, t160);

%temp first 40 sec
t_plot =0:0.1:40;
T_plot= Tb + (T0 - Tb)*exp(-t_plot/tau);

figure;
plot(t_plot,  T_plot, 'LineWidth', 1.4);
grid on;
xlabel('Tnime (s)');
ylabel('Temperature (F)');
title('Temperature vs Time for First 40 Seconds');
  ylim([0 180]);

