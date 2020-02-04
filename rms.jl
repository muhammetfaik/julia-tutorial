julia> rms(x) = norm(x) / sqrt(length(x));
julia> t = 0:0.01:1; # List of times
julia> x = cos.(8*t) - 2*sin.(11*t);
julia> avg(x)
-0.04252943783238692
julia> rms(x)
1.0837556422598
julia> using Plots
julia> plot(t, x)
julia> plot!(t, avg(x)*ones(length(x)))
julia> plot!(t, (avg(x)+rms(x))*ones(length(x)), color = :green)
julia> plot!(t, (avg(x)-rms(x))*ones(length(x)), color = :green)
julia> plot!(legend = false)
