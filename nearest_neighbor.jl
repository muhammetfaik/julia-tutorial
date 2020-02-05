julia> nearest_neighbor(x,z) = z[ argmin([norm(x-y) for y in z]) ];
julia> z = ( [2,1], [7,2], [5.5,4], [4,8], [1,5], [9,6] );
julia> nearest_neighbor([5,6], z)
2-element Array{Float64,1}:
5.5
4.0
julia> nearest_neighbor([3,3], z)
2-element Array{Int64,1}:
2
1
