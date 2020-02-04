a> f(x) = x[1] + exp(x[2]-x[1]); # A function
julia> # And its gradient
julia> grad_f(z) = [1-exp(z[2]-z[1]), exp(z[2]-z[1])];
julia> z = [1, 2];
julia> # Taylor approximation at z
julia> f_hat(x) = f(z) + grad_f(z)'*(x-z);
