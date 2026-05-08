
% Constants
AU = 149597870.7; % [km]

mu_earth = 3.0542e-6;
mu_mars  = 3.227154996101724e-7;

LU_mars = 208321282; % Sun-Mars length unit [km]

% Earth-Sun System

L_earth = lagrange(mu_earth);
L_earth_km = L_earth * AU;
L1_earth = abs(L_earth_km(2) - AU);
L2_earth = abs(L_earth_km(3) - AU);

% Mars-Sun System
L_mars = lagrange(mu_mars);
L_mars_km = L_mars * LU_mars;
L1_mars = abs(L_mars_km(2) - LU_mars);
L2_mars = abs(L_mars_km(3) - LU_mars);

% ---------------- Print Results ----------------

fprintf('========================================\n');
fprintf(' Earth-Sun System\n');
fprintf('========================================\n');

fprintf('L3 = %.6f km\n', L_earth_km(1));
fprintf('L1 = %.6f km\n', L_earth_km(2));
fprintf('L2 = %.6f km\n', L_earth_km(3));
fprintf('L1 - Earth = %.6f km\n', L1_earth);
fprintf('L2 - Earth = %.6f km\n\n', L2_earth);

fprintf('========================================\n');
fprintf(' Mars-Sun System\n');
fprintf('========================================\n');

fprintf('L3 = %.6f km\n', L_mars_km(1));
fprintf('L1 = %.6f km\n', L_mars_km(2));
fprintf('L2 = %.6f km\n', L_mars_km(3));
fprintf('L1 - Mars = %.6f km\n', L1_earth);
fprintf('L2 - Mars = %.6f km\n\n', L2_earth);

