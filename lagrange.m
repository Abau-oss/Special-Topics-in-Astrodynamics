function L = lagrange(mu)
% Computes the normalized positions of the collinear Lagrange points
% (L1, L2, L3) in the Circular Restricted Three-Body Problem

x0 = [-1, 0.9, 1.001];
L = zeros(1,3);

for i = 1:3
    x = x0(i);
    for k = 1:20
        f = x ...
            - (1-mu)*(x+mu)/abs(x+mu)^3 ...
            - mu*(x-1+mu)/abs(x-1+mu)^3;
        df = 1 ...
            + 2*(1-mu)/abs(x+mu)^3 ...
            + 2*mu/abs(x-1+mu)^3;
        x = x - f/df;
    end
    L(i) = x;
end
end