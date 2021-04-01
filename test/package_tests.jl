@time @testset "Package tests" begin
    exclude_from_tests = String[
        "DataFrames",
        "GLM",
        "StatsBase",
        "TextAnalysis",
    ]
    for name ∈ exclude_from_tests
        @test name ∈ keys(predictmd_direct_deps)
    end
    for pkgname ∈ sort(unique(collect(keys(predictmd_direct_deps))))
        pkguuid = predictmd_direct_deps[pkgname]
        include_this = pkgname ∉ exclude_from_tests
        this_is_not_stdlib = !Pkg.Types.is_stdlib(Base.UUID(pkguuid))
        if include_this && this_is_not_stdlib
            @time Pkg.test(pkgname; coverage = false)
        end
    end
end
