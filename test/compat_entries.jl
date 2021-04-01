@time @testset "[compat] entries" begin
    compat_regex_1 = r"^[\d]*?$"
    compat_regex_2 = r"^[\d]*?\.[\d]*?$"
    compat_regex_3 = r"^[\d]*?\.[\d]*?\.[\d]*?$"

    for (pkgname, pkguuid) in predictmd_direct_deps
        if !Pkg.Types.is_stdlib(Base.UUID(pkguuid))
            @testset "Dependency: $(pkgname)" begin
                @test haskey(predictmd_project_compat, pkgname)
                pkgcompat = predictmd_project_compat[pkgname]
                matches_regex_1 = occursin(compat_regex_1, pkgcompat)
                matches_regex_2 = occursin(compat_regex_2, pkgcompat)
                matches_regex_3 = occursin(compat_regex_3, pkgcompat)
                @test matches_regex_1 || matches_regex_2 || matches_regex_3
                ver = Base.VersionNumber(pkgcompat)
                @test isempty(ver.prerelease)
                @test isempty(ver.build)
                @test ver > v"0"
                @test ver >= v"0.1"
                if ver.major < 1
                    @test ver.minor >= 1
                end
                if matches_regex_1
                    major = parse(Int, pkgcompat)
                    @test major >= 1
                    @test ver >= v"1"
                end
            end
        end
    end
end
