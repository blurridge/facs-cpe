% 1.a
disp('1.a');
A = [2,1,1; 0,-3,4];
B = [3,-1,3;2,0,5];
curr_ans = A + B;
disp(curr_ans);

%1.b
disp('1.b');
A = [1,2;3,0];
B = [1,3;0,-4];
curr_ans = (3*A) - (2*B);
disp(curr_ans);

%1.c
disp('1.c');
A = [2,1,1; 0,-3,4];
B = [3,-1,3;2,0,5];
curr_ans = (5*A) - (2*B);
disp(curr_ans);

%2.
disp('2.');
A = [1,2;3,0];
B = [2,-1;3,4];
C = [2,-2;1,3;4,-1];
curr_ans = C*(A + B);
disp(curr_ans);

%3.
disp('3.');
curr_ans = (C*A) + (C*B);
disp(curr_ans);

%4.
disp('4.');
figure(1);
x = -300:300;
signal_a = [1 5 3];
signal_b = [1 0 0 4];
signal_a_y = polyval(signal_a, x);
signal_b_y = polyval(signal_b, x);
plot(x, signal_a_y, 'r');
hold on
plot(x, signal_b_y, 'b--');
legend('signal_a', 'signal_b');

%5.
disp('5.');
figure(2);
subplot(2, 1, 1);
plot(x, signal_a_y, 'r');

subplot(2, 1, 2);
plot(x, signal_b_y, 'b--');

%6.
disp('6.');
p_a = [1 32 8 85 4 1 3 1];
p_b = [3 -1 24 9 6 2];
p_c = [1 77 11 1];
root_a = roots(p_a);
root_b = roots(p_b);
root_c = roots(p_c);
disp(root_a);
disp(root_b);
disp(root_c);

%7.
disp('7.');
conv_a = conv(p_a, p_b);
conv_b = conv(p_a, p_c);
disp(conv_a);
disp(conv_b);