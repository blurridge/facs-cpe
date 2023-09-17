syms Vs s;

coeffMat = [s+1, -s, -1; -s, (2*s)+1, -1; -1, -1, s+2];
inVec = [Vs; 0; 0];
coeffMat_i2 = coeffMat;
coeffMat_i2(:,2) = inVec;
I2 = det(coeffMat_i2) / det(coeffMat);
disp('I2 = ')
pretty(I2);

Gs = tf([1,2,1], [1,5,2]) %#ok<NOPTS> 
