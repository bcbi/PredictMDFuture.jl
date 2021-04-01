using PredictMDFuture
using Documenter

DocMeta.setdocmeta!(PredictMDFuture, :DocTestSetup, :(using PredictMDFuture); recursive=true)

makedocs(;
    modules=[PredictMDFuture],
    authors="Dilum Aluthge, Brown Center for Biomedical Informatics, and contributors",
    repo="https://github.com/bcbi/PredictMDFuture.jl/blob/{commit}{path}#{line}",
    sitename="PredictMDFuture.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://bcbi.github.io/PredictMDFuture.jl",
        assets=String[],
    ),
    pages=[
        "Home"                => "index.md",
        "Public API"          => "public.md",
        "Internals (Private)" => "private.md",
    ],
)

deploydocs(;
    repo="github.com/bcbi/PredictMDFuture.jl",
)
