clear; clc; close all

% Cargar parámetros
ParametrosCircuito

% Resolver la EDO
[t, x] = ode45(@CircuitoDinamico, Tsim, x0);

% Entrada escalón
u = ones(size(t));

% Gráfica
figure
plot(t, u, 'k--','LineWidth',1.2)
hold on
plot(t, x(:,1), 'm','LineWidth',1.5)
hold off
grid on

xlabel('Tiempo [s]')
ylabel('Voltaje [V]')
title('Respuesta del sistema (EDO - MATLAB)')
legend('u(t) = V_{in}','y(t) = V_o')