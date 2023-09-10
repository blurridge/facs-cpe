syms x(t) s Xs;

%2-1. #1
disp('2-A. #1');
eqn1 = diff(x(t), t, 2) + 6*diff(x(t), t) + 8*x == 6*sin(4*t);
eqn1LT = laplace(eqn1);
eqn1LT = subs(eqn1LT,laplace(x(t),t,s),Xs);
eqn1LT = subs(eqn1LT,x(0),0);
eqn1LTsol = solve(eqn1LT,Xs);
xt = ilaplace(eqn1LTsol);
pretty(xt);

%2-1. #2
disp('2-A. #2');
eqn2 = diff(x(t), t, 2) + 8*diff(x(t), t) + 25*x == 10;
eqn2LT = laplace(eqn2);
eqn2LT = subs(eqn2LT,laplace(x(t),t,s),Xs);
eqn2LT = subs(eqn2LT,x(0),0);
eqn2LTsol = solve(eqn2LT,Xs);
xt = ilaplace(eqn2LTsol);
pretty(xt);