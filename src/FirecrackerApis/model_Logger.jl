# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

mutable struct Logger <: SwaggerModel
    log_fifo::Union{ Nothing, String } # log_fifo
    metrics_fifo::Union{ Nothing, String } # metrics_fifo
    level::Union{ Nothing, String } # level
    show_level::Union{ Nothing, Bool } # show_level
    show_log_origin::Union{ Nothing, Bool } # show_log_origin
    options::Union{ Nothing, Vector{String} } # options

    function Logger(;log_fifo=nothing, metrics_fifo=nothing, level="Warning", show_level=false, show_log_origin=false, options=nothing)
        o = new()
        set_field!(o, :log_fifo, log_fifo)
        set_field!(o, :metrics_fifo, metrics_fifo)
        set_field!(o, :level, level)
        set_field!(o, :show_level, show_level)
        set_field!(o, :show_log_origin, show_log_origin)
        set_field!(o, :options, options)
        o
    end
end # type Logger

const _name_map_Logger = Dict{String,Symbol}(["log_fifo"=>:log_fifo, "metrics_fifo"=>:metrics_fifo, "level"=>:level, "show_level"=>:show_level, "show_log_origin"=>:show_log_origin, "options"=>:options])
const _field_map_Logger = Dict{Symbol,String}([:log_fifo=>"log_fifo", :metrics_fifo=>"metrics_fifo", :level=>"level", :show_level=>"show_level", :show_log_origin=>"show_log_origin", :options=>"options"])
Swagger.name_map(::Type{ Logger }) = _name_map_Logger
Swagger.field_map(::Type{ Logger }) = _field_map_Logger

const _allowed_Logger_level = ["Error", "Warning", "Info", "Debug"]

function check_required(o::Logger)
    (o.log_fifo === nothing) && (return false)
    (o.metrics_fifo === nothing) && (return false)
    true
end

function validate_field(o::Logger, name::Symbol, val)
    if name === :level
        Swagger.validate_param(name, "Logger", :enum, val, _allowed_Logger_level)
    end
end