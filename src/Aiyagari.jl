module Aiyagari
    # Settings
    BASE_FOLDER = dirname(@__DIR__)

    # Packages
    using CSV               # to read and save parameters in CSV format
    using IterativeSolvers  # powm!
    using LinearAlgebra     # dot()
    using Parameters        # unpack
    using Plots
    # using QuantEcon         # rouwenhorst(), tauchen()
    using SparseArrays      # SparseMatrixCSC

    # Load dependencies
    include("./dep/structs.jl")
        export Herramientas, Households, Firms, Economía, Aggregates
    include("./dep/utils.jl")
        export EGM, LinearJumps
    include("./dep/input.jl")
        export build_model
    include("./dep/output.jl")
        export write_parameters
    include("./dep/ss_solve.jl")
        export steady
    include("./dep/ss_analysis.jl")
        export ss_summary, ss_graphs
end