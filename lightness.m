function beta = lightness(mu, x)

r1 = abs(x + mu);
r2 = abs(x - 1 + mu);

dUdx = x ...
    - (1-mu)*(x+mu)/r1^3 ...
    - mu*(x-1+mu)/r2^3;

beta = abs(dUdx) * r1^2 / (1-mu);

end