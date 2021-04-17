module PredictMDFuture

import Reexport

# We intentionally do not import the following packages because they take a long time to import:
# 1. FHIRClient

# biology

# data
Reexport.@reexport using Arrow
Reexport.@reexport using CSV
Reexport.@reexport using DataFrames
Reexport.@reexport using Tables

# gpu
Reexport.@reexport using CUDA

# health and medicine
Reexport.@reexport using HealthBase
Reexport.@reexport using PharmaceuticalClassification

# machine learning
Reexport.@reexport using DecisionTree
Reexport.@reexport using Flux
Reexport.@reexport using GLM
Reexport.@reexport using MLJ
Reexport.@reexport using MLJFlux
Reexport.@reexport using MLJLinearModels

# natural language processing
Reexport.@reexport using TextAnalysis

# plotting
Reexport.@reexport using Plots
Reexport.@reexport using StatsPlots
Reexport.@reexport using UnicodePlots
Reexport.@reexport using VegaLite

# serialization

# statistics
Reexport.@reexport using Statistics
Reexport.@reexport using StatsBase

end # module
