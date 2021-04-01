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
1. Merge the contents of this repository into the `PredictMD.jl` repository
2. Delete this repository
3. Make a breaking major release of `PredictMD.jl`
4. Deprecate the `PredictMDExtra.jl` package
5. Deprecate the `PredictMDFull.jl` package
