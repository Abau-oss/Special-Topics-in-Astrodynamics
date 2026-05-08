function lagrange_points = lagrange(mu, n_iter)
% Computes the normalized positions of the collinear Lagrange points
% (L1, L2, L3) in the Circular Restricted Three-Body Problem.

    if nargin < 2
        n_iter = 20;
    end

    % Initial guesses
    starting_points = [-1, 0.9, 1.001];

    lagrange_points = zeros(1,3);

    for j = 1:length(starting_points)

        x = starting_points(j);

        for k = 1:n_iter

            f = x ...
                - (1 - mu) * (mu + x) / abs(mu + x)^3 ...
                + mu * (1 - mu - x) / abs(1 - mu - x)^3;

            df = 1 ...
                 + 2 * (1 - mu) / abs(mu + x)^3 ...
                 + 2 * mu / abs(1 - mu - x)^3;

            x = x - f / df;
        end

        lagrange_points(j) = x;
    end
end
