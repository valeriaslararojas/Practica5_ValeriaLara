function dx = CircuitoDinamico(t, x)

% Cargar parámetros
ParametrosCircuito

% Entrada escalón unitario
u = 1;   

% Estados:
% x(1) = y = Vo
% x(2) = y' = dVo/dt

dx = zeros(2,1);

dx(1) = x(2);

dx(2) = (1/a2)*( K*u - a1*x(2) - a0*x(1) );