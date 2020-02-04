julia> # Parameters in regression model
julia> beta = [148.73, -18.85]; v = 54.40;
julia> y_hat(x) = x'*beta + v;
julia> # Evaluate regression model prediction
julia> x = [0.846, 1]; y = 115;
julia> y_hat(x), y
(161.37557999999999, 115)
julia> x = [1.324,2]; y = 234.50;
julia> y_hat(x), y
(213.61852000000002, 234.5)
