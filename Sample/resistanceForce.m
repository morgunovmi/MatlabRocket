function f = resistanceForce(v, rho, gamma)
    gamma(gamma > pi) = 2 * pi - gamma(gamma > pi);

    k = zeros(size(gamma));
    k(gamma <= pi/4) = 1;
    k(gamma > pi/4 & gamma <= 3*pi/4) = 10;
    k(gamma > 3*pi/4) = 2;

    f = -v * norm(v) * k * rho * 10;
end