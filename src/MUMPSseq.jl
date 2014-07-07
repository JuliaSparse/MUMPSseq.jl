module MUMPSseq
    include("../deps/deps.jl")

    export
         DMumps,
         DMumpssv

    include("dmumps_h.jl")
    include("DMumps.jl")

end # module
