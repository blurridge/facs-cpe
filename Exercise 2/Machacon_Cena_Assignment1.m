%A
disp("-------- LETTER A --------");
syms s Vs;
coeffMat = [4*s + 4, -(4*s+2), -2; -(4*s + 2), 10*s + 14, -(6*s + 4); -2, -(6*s + 4), (6*s + 6 + 9/s)];
inVec = [Vs; 0; 0];
coeffMat_i2 = coeffMat;
coeffMat_i2(:,2) = inVec;
I2 = det(coeffMat_i2) / det(coeffMat);
disp('I2 = ');
pretty(I2);
Vo = 8*s*I2;
a_tf = Vo/Vs;
disp('Gs = ');
pretty(a_tf);

%B
disp("-------- LETTER B --------");
syms s Vs;
coeffMat = [5/s + 7 + s, -(s+2), -5; -(s + 2), 2*s + 4 + 3/s, -(s + 2); -5, -(s + 2), 4/s + s + 8];
inVec = [Vs; 0; 0];
coeffMat_i2 = coeffMat;
coeffMat_i2(:,2) = inVec;
I2 = det(coeffMat_i2) / det(coeffMat);
disp('I2 = ');
pretty(I2);
b_tf = I2 / Vs;
disp('Gs = ');
pretty(b_tf);