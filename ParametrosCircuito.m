%% ==================================================
%  Parámetros del circuito (Figura 1)
% ==================================================

% Resistencias (Ohms)
R1 = 1e3;
R2 = 1e3;
R3 = 10e3;
R4 = 15e3;

% Capacitores (Farads)
C1 = 0.1e-6;
C2 = 0.1e-6;

% Ganancia del amplificador operacional
K = 1 + R4/R3;

% Coeficientes de la ecuación diferencial
a2 = R1*R2*C1*C2;
a1 = R1*C1 + R2*C1 + R1*C2;
a0 = 1;

% Tiempo de simulación
Tsim = [0 0.02];

% Condiciones iniciales
x0 = [0; 0];    % [y(0); y'(0)]