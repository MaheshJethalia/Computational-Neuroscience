f = @(t,y,mu) [mu*(y(1)-y(1)^3/3-y(2)); y(1)/mu];
tspan = [0, 200];
y0 = [1; 0];
Mu = 1;
ode = @(t,y) f(t,y,Mu);
[t,y] = ode45(ode, tspan, y0);

% Plot of the solution
figure(1)
%plot(t,y(:,1))
plot(t,y(:,1),'-o',t,y(:,2),'-o')
xlabel('t')
ylabel('solution y & z')
legend('y','z')
grid
title('van der Pol Equation, \mu = 1')
% for Mu =0.1
Mu = 0.1;
ode = @(t,y) f(t,y,Mu);
[t,y] = ode45(ode, tspan, y0);

% Plot of the solution
figure(2)
plot(t,y(:,1),'-o',t,y(:,2),'-o')
xlabel('t')
ylabel('solution y & z')
legend('y','z')
grid
title('van der Pol Equation, \mu = 0.1')
% for Mu =100
Mu = 100;
ode = @(t,y) f(t,y,Mu);
[t,y] = ode45(ode, tspan, y0);

% Plot of the solution
figure(3)
plot(t,y(:,1),'-o')
xlabel('t')
ylabel('solution y')
legend('y')
grid
title('van der Pol Equation, \mu = 100')
%ode15s
Mu = 100;
ode = @(t,y) f(t,y,Mu);
[t,y] = ode15s(ode, tspan, y0);
figure(4)
plot(t,y(:,1),'-o',t,y(:,2),'-o')
title('VDP Equation,mu = 100,ODE15s')
xlabel('t')
ylabel('solution y & z')
legend('y','z')
grid
figure (5)
plot(y(:,2),y(:,1));
xlabel('z')
ylabel('y')
grid
