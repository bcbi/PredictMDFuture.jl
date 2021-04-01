@time @testset "Aqua (Auto QUality Assurance)" begin
    Aqua.test_all(
        PredictMDFuture;
        ambiguities = false,
        undefined_exports = false,
    )
end
