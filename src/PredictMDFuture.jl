module PredictMDFuture

import Reexport

Reexport.@reexport using DataFrames
Reexport.@reexport using FHIRClient
Reexport.@reexport using GLM
Reexport.@reexport using HealthBase
Reexport.@reexport using MLJ
Reexport.@reexport using PharmaceuticalClassification
Reexport.@reexport using Statistics
Reexport.@reexport using StatsBase
Reexport.@reexport using TextAnalysis

"""
    predictmd_pkgdir()

Return the directory of the PredictMD.jl package.
"""
function predictmd_pkgdir()
    this_file = @__FILE__
    src_dir = dirname(this_file)
    root_dir = dirname(src_dir)
    return root_dir
end

end # module
