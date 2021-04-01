using PredictMDFuture
using Documenter

DocMeta.setdocmeta!(PredictMDFuture, :DocTestSetup, :(using PredictMDFuture); recursive=true)

makedocs(;
    modules=[PredictMDFuture],
    authors="Dilum Aluthge, contributors",
    repo="https://github.com/bcbi/PredictMDFuture.jl/blob/{commit}{path}#{line}",
    sitename="PredictMDFuture.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bcbi.github.io/PredictMDFuture.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/bcbi/PredictMDFuture.jl",
)
