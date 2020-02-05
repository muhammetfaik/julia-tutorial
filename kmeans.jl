using LinearAlgebra
using Plots
import Pkg
Pkg.add("RecipesBase")
using RecipesBase
function kmeans(x,k;maxiters = 100,tol = 1e-5)
    N = length(x)
    n = length(x[1])
    distances = zeros(N)
    reps = [zeros(n) for j=1:k]
    # ’assignment’ is an array of N integers between 1 and k.
    # The initial assignment is chosen randomly.
    assignment = [ rand(1:k) for i in 1:N]
    Jprevious = Inf
    for iter = 1:maxiters
        for j = 1:k
            group = [i for i=1:N if assignment[i] == j]
        end;
        for i = 1:N
            (distances[i],assignment[i]) = findmin([norm(x[i] - reps[j]) for j = 1:k])
        end;

        J = norm(distances)^2 / N
        println("Iteration ", iter, ": Jclust = ", J, ".")
        if iter > 1 && abs(J - Jprevious) < tol * J
            return assignment, reps
        end
    Jprevious = J   
    end
end
X = vcat( [ 0.3*randn(2) for i = 1:100 ],
[ [1,1] + 0.3*randn(2) for i = 1:100 ],
[ [1,-1] + 0.3*randn(2) for i = 1:100 ] )
scatter([x[1] for x in X], [x[2] for x in X])
plot!(legend = false, grid = false, size = (500,500),
xlims = (-1.5,2.5), ylims = (-2,2))
assignment, reps = kmeans(X, 3)