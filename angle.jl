a> # Define angle function, which returns radians
julia> ang(x,y) = acos(x'*y/(norm(x)*norm(y)));
julia> a = [1,2,-1]; b=[2,0,-3];
julia> ang(a,b)
