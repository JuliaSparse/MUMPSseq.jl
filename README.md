# MUMPSseq - An interface to sequential MUMPS

[![Build Status](https://travis-ci.org/dmbates/MUMPS1.jl.svg)](https://travis-ci.org/dmbates/MUMPS1.jl)

This is a [Julia](http://www.julialang.org) interface to the sequential version of the MUltifrontal Massively Parallel sparse direct Solver [MUMPS](http://mumps.enseeiht.fr).

A [MUMPS package](https://github.com/lruthotto/MUMPS.jl) for Julia using the MPI interface is already registered.

Travis tests are currently failing, perhaps because the version of libdmumps_seq on Travis's Ubuntu 12.04 systems, is out-of-date?  Will need to create a more fully-featured `deps/build.jl`.
