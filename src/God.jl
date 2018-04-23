module God

export solve

function solve(Problem::Function, Solver::Function)
    return Solver( Problem )
end

function solve(Problems::Array{Function,1}, Solver::Function)
    solutions = []

    for problem in Problems
        push!(solutions, solve(problem, Solver) )
    end

    return solutions
end

function solve(Problem::Function, Solvers::Array{Function,1})
    solutions = []

    for solver in Solvers
        push!(solutions, solve(Problem, solver) )
    end

    return solutions
end


function solve(Problems::Array{Function,1}, Solvers::Array{Function,1})
    solutions = []

    for Solver in Solvers
        push!(solutions, solve(Problems, Solver) )
    end

    return solutions
end

end # module
