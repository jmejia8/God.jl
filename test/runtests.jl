using God
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end


# problem definition
problem1(x) = sum( x.^2 )

# solver
solver1(problem) = problem(0:10)

# set of problem
problemSet = Array{Function, 1}([problem1])
solverSet = Array{Function, 1}([solver1])

# test cases
@test solve(problem1, solver1)    == 385
@test  385  in solve(problemSet, solver1)
@test [385] in solve(problemSet, solverSet)
