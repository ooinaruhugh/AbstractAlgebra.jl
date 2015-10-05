module Test

using Base.Test, Nemo

export test_all

include("flint/fmpz-test.jl")
include("flint/fmpz_poly-test.jl")
include("flint/fmpz_mod_poly-test.jl")
include("flint/nmod_poly-test.jl")
include("flint/fmpq_poly-test.jl")
include("flint/fq_poly-test.jl")
include("flint/fq_nmod_poly-test.jl")
include("flint/fmpz_series-test.jl")
include("flint/fmpq_series-test.jl")
include("flint/fmpz_mod_series-test.jl")
include("flint/fq_series-test.jl")
include("flint/fq_nmod_series-test.jl")
include("flint/nmod_mat-test.jl")
include("flint/fmpz_mat-test.jl")

include("arb/arb_poly-test.jl")

include("pari/pari_maximal_order_elem-test.jl")
include("pari/PariIdeal-test.jl")

include("generic/Poly-test.jl")
include("generic/Residue-test.jl")
include("generic/PowerSeries-test.jl")
include("generic/Matrix-test.jl")

include("Fields-test.jl")
include("Benchmark-test.jl")

function test_rings()
   test_fmpz()
   test_fmpz_poly()
   test_fmpz_mod_poly()
   test_nmod_poly()
   test_fmpq_poly()
   test_fq_poly()
   test_fq_nmod_poly()
   test_fmpz_series()
   test_fmpq_series()
   test_fmpz_mod_series()
   test_fq_series()
   test_fq_nmod_series()

   test_arb_poly()

   test_pari_maximal_order_elem()
   test_PariIdeal()

   test_poly()
   test_residue()
   test_series()
   test_matrix()
   test_nmod_mat()
   test_fmpz_mat()
end

function test_all()
   test_rings()
   test_fields()
   test_benchmarks()
end

end # module
