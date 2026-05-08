
%% ---------------- Constants ----------------

AU = 149597870.7;              % [km]

mu_earth = 3.0542e-6;
mu_mars  = 3.227154996101724e-7;

LU_mars = 208321282;           % [km]

shift = 0.00050;

mass_sc = 100;                 % [kg]
sigma_star = 1.53e-3;          % [kg/m^2]

% Earth-Sun System

L_earth = lagrange(mu_earth);

L_earth_km = L_earth * AU;

L1_earth = abs(L_earth_km(2) - AU);
L2_earth = abs(L_earth_km(3) - AU);

xL2_earth = L_earth(3);
xAL2_earth = xL2_earth - shift;

beta_earth = lightness(mu_earth, xAL2_earth);

A_earth = mass_sc * beta_earth / sigma_star;
side_earth = sqrt(A_earth);

% Mars-Sun System

L_mars = lagrange(mu_mars);

L_mars_km = L_mars * LU_mars;

L1_mars = abs(L_mars_km(2) - LU_mars);
L2_mars = abs(L_mars_km(3) - LU_mars);

xL2_mars = L_mars(3);
xAL2_mars = xL2_mars - shift;

beta_mars = lightness(mu_mars, xAL2_mars);

A_mars = mass_sc * beta_mars / sigma_star;
side_mars = sqrt(A_mars);

% Print Results

fprintf('========================================\n');
fprintf(' Earth-Sun System\n');
fprintf('========================================\n');

fprintf('L3 = %.6f km\n', L_earth_km(1));
fprintf('L1 = %.6f km\n', L_earth_km(2));
fprintf('L2 = %.6f km\n', L_earth_km(3));

fprintf('L1 - Earth = %.6f km\n', L1_earth);
fprintf('L2 - Earth = %.6f km\n\n', L2_earth);

fprintf('Artificial L2 = %.6f\n', xAL2_earth);
fprintf('Lightness number = %.6f\n', beta_earth);
fprintf('Sail side length = %.3f m\n\n', side_earth);

fprintf('========================================\n');
fprintf(' Mars-Sun System\n');
fprintf('========================================\n');

fprintf('L3 = %.6f km\n', L_mars_km(1));
fprintf('L1 = %.6f km\n', L_mars_km(2));
fprintf('L2 = %.6f km\n', L_mars_km(3));

fprintf('L1 - Mars = %.6f km\n', L1_mars);
fprintf('L2 - Mars = %.6f km\n\n', L2_mars);

fprintf('Artificial L2 = %.6f\n', xAL2_mars);
fprintf('Lightness number = %.6f\n', beta_mars);
fprintf('Sail side length = %.3f m\n', side_mars);