@time @testset "Package tests" begin
    exclude_from_tests = String[
        "Arrow",
        "CSV",
        "CUDA",
        "DataFrames",
        "DecisionTree",
        "Flux",
        "GLM",
        "MLJFlux",
        "Plots",
        "UnicodePlots",
    ]
    @test exclude_from_tests == sort(exclude_from_tests)
    @test exclude_from_tests == unique(exclude_from_tests)
    for name ∈ exclude_from_tests
        @test name ∈ keys(predictmd_direct_deps)
    end
    for pkgname ∈ sort(unique(collect(keys(predictmd_direct_deps))))
        pkguuid = predictmd_direct_deps[pkgname]
        not_excluded = pkgname ∉ exclude_from_tests
        not_stdlib = !Pkg.Types.is_stdlib(Base.UUID(pkguuid))
        if not_excluded && not_stdlib
            @time Pkg.test(pkgname; coverage = false)
        end
    end
end
