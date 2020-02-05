julia>using LinearAlgebra
julia>avg(x) = (ones(length(x)) / length(x))'*x;
julia> Jclust(x,reps,assignment) =
avg( [norm(x[i]-reps[assignment[i]])^2 for i=1:length(x)] )
Jclust (generic function with 1 method)
julia> x = [ [0,1], [1,0], [-1,1] ]
3-element Array{Array{Int64,1},1}:
[0, 1]
[1, 0]
[-1, 1]
julia> reps = [ [1,1], [0,0] ]
2-element Array{Array{Int64,1},1}:
[1, 1]
[0, 0]
julia> assignment = [1,2,1]
3-element Array{Int64,1}:
1
2
1
julia> Jclust(x,reps,assignment)
2.0
julia> assignment = [1,1,2]
1.3333333333333333
