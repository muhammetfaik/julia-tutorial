a> f(x) = x[1] + exp(x[2]-x[1]); # A function
julia> # And its gradient
julia> grad_f(z) = [1-exp(z[2]-z[1]), exp(z[2]-z[1])];
julia> z = [1, 2];
julia> # Taylor approximation at z
julia> f_hat(x) = f(z) + grad_f(z)'*(x-z);
julia> # Let’s compare f and f_hat for some specific x’s
julia> f([1,2]), f_hat([1,2])
(3.718281828459045, 3.718281828459045)
julia> f([0.96,1.98]), f_hat([0.96,1.98])
(3.733194763964298, 3.732647465028226)
julia> f([1.10,2.11]), f_hat([1.10,2.11])
(3.845601015016916, 3.845464646743635)
