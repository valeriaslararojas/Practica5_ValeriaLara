function dx = CircuitoDinamico(t, x)


ParametrosCircuito


u = 1;   

dx = zeros(2,1);

dx(1) = x(2);

dx(2) = (K*u - (C1*(R1+R2) + R1*C2*(1-K))*x(2) - x(1)) / (R1*R2*C1*C2);