# PredictMDFuture

[![Documentation (Stable)][docs-stable-img]][docs-stable-url]
[![Documentation (Dev)][docs-dev-img]][docs-dev-url]
[![Code Coverage][codecov-img]][codecov-url]

| Julia   | Continuous Integration                                                                  |
| ------- | --------------------------------------------------------------------------------------- |
| v1      | [![Continuous Integration][ci-img]][ci-url]                                             |
| nightly | [![Continuous Integration (Julia nightly)][ci-julia-nightly-img]][ci-julia-nightly-url] |

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg "Documentation (Stable)"
[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg "Documentation (Dev)"
[codecov-img]: https://codecov.io/gh/bcbi/PredictMDFuture.jl/branch/master/graph/badge.svg "Code Coverage"
[ci-img]: https://github.com/bcbi/PredictMDFuture.jl/actions/workflows/ci.yml/badge.svg "Continuous Integration"
[ci-julia-nightly-img]: https://github.com/bcbi/PredictMDFuture.jl/actions/workflows/ci_julia_nightly.yml/badge.svg "Continuous Integration (Julia nightly)"

[docs-stable-url]: https://docs.bcbi.brown.edu/PredictMDFuture.jl/stable/
[docs-dev-url]: https://docs.bcbi.brown.edu/PredictMDFuture.jl/dev/
[codecov-url]: https://codecov.io/gh/bcbi/PredictMDFuture.jl
[ci-url]: https://github.com/bcbi/PredictMDFuture.jl/actions/workflows/ci.yml
[ci-julia-nightly-url]: https://github.com/bcbi/PredictMDFuture.jl/actions/workflows/ci_julia_nightly.yml

## Transition Plan

Here is the rough plan for transitioning to the new version of PredictMD:
1. Merge the contents of the `PredictMDFuture` repository into the [`PredictMD.jl`](https://github.com/bcbi/PredictMD.jl) repository
2. Make a breaking major release of `PredictMD.jl`
3. Delete the `PredictMDFuture` repository
5. Deprecate the [`PredictMDExtra.jl`](https://github.com/bcbi/PredictMDExtra.jl) package
6. Deprecate the [`PredictMDFull.jl`](https://github.com/bcbi/PredictMDFull.jl) package

## How to install PredictMDFuture

Open Julia and run the following commands:
```julia
julia> import Pkg

julia> Pkg.activate("PredictMDEnvironment"; shared = true)

julia> Pkg.add(url = "https://github.com/bcbi/PredictMDFuture.jl")

julia> Pkg.pin("PredictMDFuture")

julia> Pkg.precompile()
```

## How to update PredictMDFuture

Open Julia and run the following commands:
```julia
julia> import Pkg

julia> Pkg.activate("PredictMDEnvironment"; shared = true)

julia> Pkg.free("PredictMDFuture")

julia> Pkg.update()

julia> Pkg.pin("PredictMDFuture")

julia> Pkg.precompile()
```

## Future changes to the "How to install PredictMDFuture" section

In the future, the section will look like this instead:

Open Julia and run the following commands:
```julia
julia> import Pkg

julia> Pkg.activate("PredictMDEnvironment"; shared = true)

julia> Pkg.add("PredictMDFuture")

julia> Pkg.pin("PredictMDFuture")

julia> Pkg.precompile()
```
