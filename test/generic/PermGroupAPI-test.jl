@testset "GroupsCore API PermGroup" begin

    include(joinpath(dirname(dirname(pathof(AbstractAlgebra))), "test", "Groups-conformance-tests.jl"))
    let G = SymmetricGroup(5)
        test_Group_interface(G)
        test_GroupElement_interface(rand(G, 2)...)
    end
end
