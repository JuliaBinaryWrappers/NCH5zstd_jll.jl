# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCH5zstd_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCH5zstd")
JLLWrappers.@generate_main_file("NCH5zstd", Base.UUID("bd649987-992b-58a5-a148-17bcb11e30ae"))
end  # module NCH5zstd_jll
