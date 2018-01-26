# AbstractAlgebra

[![Build Status](https://travis-ci.org/Nemocas/AbstractAlgebra.jl.svg?branch=master)](https://travis-ci.org/Nemocas/AbstractAlgebra.jl) [![Build status](https://ci.appveyor.com/api/projects/status/gc4mw5oixputntda/branch/master?svg=true)](https://ci.appveyor.com/project/thofma/abstractalgebra-jl-n5gdb/branch/master)

AbstractAlgebra is a pure Julia package for computational abstract algebra. It grew out of the Nemo project and provides all of the abstract types and generic implementations that Nemo relies on.

It is currently developed by William Hart, Tommy Hofmann, Fredrik Johansson,
Claus Fieker with contributions from others.

AbstractAlgebra currently provides:

* Generic polynomial rings, matrix spaces, fraction fields, residue rings, relative and absolute power series, Laurent series
* Finite fields, integers, rationals, permutations and characters, number fields

Projects that depend on AbstractAlgebra include:

* Nemo.jl [http://nemocas.org](http://nemocas.org/) (optimised implementations of specific rings provided by the Flint, Arb and Antic C libraries)
* Hecke.jl [http://thofma.github.io/Hecke.jl/latest/](http://thofma.github.io/Hecke.jl/latest/) (algebraic number theory)
* Singular.jl [http://github.com/wbhart/Singular.jl](http://github.com/wbhart/Singular.jl) (polynomial rings and ideals, Groebner bases and computer algebra provided by the Singular C++ library)
