const DIR = dirname(@__FILE__)
const GENDIR = joinpath(DIR, "..")
const TEMPCFGFILE = joinpath(GENDIR, "config.json")
const SRCDIR = joinpath(GENDIR, "src")
const JULIA = joinpath(Sys.BINDIR, "julia")
const SWAGGERDIR=read(`$(JULIA) -e 'import Swagger; print(normpath(joinpath(dirname(pathof(Swagger)), "..")))'`, String)
const SWAGGERGEN = joinpath(SWAGGERDIR, "plugin", "generate.sh")

function gen(pkg, swg)
    open(TEMPCFGFILE, "w") do f
        println(f, """{ "packageName": "$pkg" } """)
    end
    outpath = joinpath(SRCDIR, pkg*"tmp")
    pkgpath = joinpath(SRCDIR, pkg)
    mkpath(outpath)
    run(`$SWAGGERGEN -i $swg -o $outpath -c $TEMPCFGFILE`)
    mv(joinpath(outpath, "src"), pkgpath; force=true)
    rm(outpath; force=true, recursive=true)
    rm(TEMPCFGFILE; force=true)
    nothing
end

const USAGE = """Usage: julia generate.jl <specs>
Specifications: https://github.com/firecracker-microvm/firecracker/blob/master/api_server/swagger/firecracker.yaml"""

if isempty(ARGS)
    println(USAGE)
else
    gen("FirecrackerApis", ARGS[1])
end
