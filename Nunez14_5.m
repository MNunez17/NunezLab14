% Given values
RC = 0.2;
Va = 10;
V0 = 2;

% Voltage form
fprintf('RC Circuit Application\n');
 fprintf('RC = %.2f s, Va = %.1f V, V0 = %.1f V\n\n', RC, Va, V0);

t_vals  = [0.25 0.5 1.0];

for  i = 1:length(t_vals)
 t = t_vals(i);
 Vt = Va + (V0 - Va) * exp(-t/RC); fprintf('Voltage at t = %.2f s is %.2f V\n', t, Vt);
end


V_target = 8;

% Solve for t:
t_8  = -RC * log((Va - V_target) / (Va - V0));

fprintf('\nTime to reach %.2f V is %.2f s\n\n', V_target, t_8);

%plot v(t)
t_plot = 0:0.001:1; 

 V_plot  = Va + (V0 - Va) * exp(-t_plot/RC);

figure;
plot(t_plot,   V_plot,  'LineWidth', 1.3);
 grid  on;
xlabel('Time (s)');
 ylabel('Voltage V(t) (V)');
title('Voltage Across Capacitor for First 1 Second');
ylim([0 10]);
xlim([0 1]);
