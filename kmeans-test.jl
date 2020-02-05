julia> X = vcat( [ 0.3*randn(2) for i = 1:100 ],
[ [1,1] + 0.3*randn(2) for i = 1:100 ],
[ [1,-1] + 0.3*randn(2) for i = 1:100 ] )
julia> scatter([x[1] for x in X], [x[2] for x in X])
julia> plot!(legend = false, grid = false, size = (500,500),
julia>xlims = (-1.5,2.5), ylims = (-2,2))
