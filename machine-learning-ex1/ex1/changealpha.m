clear; close all; clc

data= load('ex1data2.txt')
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

alpha = 0.01;
num_iters = 50;

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
legend('J1')
hold on;

% change alpha

alpha = 0.01;
num_iters = 50;

[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

plot(1:numel(J_history), J_history, '-r', 'LineWidth', 2);
legend('J2')


% change alpha

alpha = 1;
num_iters = 50;

[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

plot(1:numel(J_history), J_history, '-r', 'LineWidth', 2);
legend('J3')
