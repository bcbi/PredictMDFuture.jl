@info "Attempting to import PredictMD..."
@time import PredictMDFuture
@info "Successfully imported PredictMD"

using Test

import Aqua
import Documenter
import Literate
import Pkg
import TOML

const predictmd_directory = PredictMDFuture.predictmd_pkgdir()
const predictmd_projectfile = joinpath(predictmd_directory, "Project.toml")
const predictmd_project = TOML.parsefile(predictmd_projectfile)
const predictmd_direct_deps = predictmd_project["deps"]
const predictmd_project_compat = predictmd_project["compat"]

@test predictmd_directory isa AbstractString
@test isabspath(predictmd_directory)

@time @testset "PredictMD.jl" begin
    include("aqua.jl")
    include("compat_entries.jl")
    include("package_tests.jl")
end
