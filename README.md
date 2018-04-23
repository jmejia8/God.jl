# God

## Install

```julia
Pkg.clone("git@github.com:jmejia8/Metaheuristics.jl.git")
```

## Simple Example
```julia
using God

# problem definition
problem1(x) = sum( x.^2 )

# solver
solver1(problem) = problem(0:10)

# Get solution
solve(problem1, solver1)
```

<!-- [![Build Status](https://travis-ci.org/jmejia8/God.jl.svg?branch=master)](https://travis-ci.org/jmejia8/God.jl) -->

<!-- [![Coverage Status](https://coveralls.io/repos/jmejia8/God.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/jmejia8/God.jl?branch=master) -->

<!-- [![codecov.io](http://codecov.io/github/jmejia8/God.jl/coverage.svg?branch=master)](http://codecov.io/github/jmejia8/God.jl?branch=master) -->

