% Constants
k = 0.1;           
T0 = 20;
t = 0:0.1:50;         

% Initial temperatures to test
Ti_list  = 0:10:100;   

 fprintf('Temperature Change Simulation\n');
fprintf('k = %.2f  |  Ambient Temp = %.1f°C\n\n', k, T0);

figure;
hold on ;


for Ti =  Ti_list
     % temp formula
    T =  T0 + (Ti - T0) *  exp(-k .* t);
       % Plot
  plot(t,  T, 'LineWidth', 1.3);
    
    % Print result 
    fprintf('Plotted object starting at %.1f°C\n', Ti);
end

%graph forma
grid on;
xlabel('Time (s)');
ylabel('Temperature (°C)');
title('Temperature of Object Over First 50 Seconds');
legendStrings = string(Ti_list) + "°C";
legend(legendStrings, 'Location', 'bestoutside');


hold off;
