# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

mutable struct NetworkInterface <: SwaggerModel
    iface_id::Union{ Nothing, String } # iface_id
    guest_mac::Union{ Nothing, String } # guest_mac
    host_dev_name::Union{ Nothing, String } # host_dev_name
    allow_mmds_requests::Union{ Nothing, Bool } # allow_mmds_requests
    rx_rate_limiter::Union{ Nothing, RateLimiter } # rx_rate_limiter
    tx_rate_limiter::Union{ Nothing, RateLimiter } # tx_rate_limiter

    function NetworkInterface(;iface_id=nothing, guest_mac=nothing, host_dev_name=nothing, allow_mmds_requests=nothing, rx_rate_limiter=nothing, tx_rate_limiter=nothing)
        o = new()
        set_field!(o, :iface_id, iface_id)
        set_field!(o, :guest_mac, guest_mac)
        set_field!(o, :host_dev_name, host_dev_name)
        set_field!(o, :allow_mmds_requests, allow_mmds_requests)
        set_field!(o, :rx_rate_limiter, rx_rate_limiter)
        set_field!(o, :tx_rate_limiter, tx_rate_limiter)
        o
    end
end # type NetworkInterface

const _name_map_NetworkInterface = Dict{String,Symbol}(["iface_id"=>:iface_id, "guest_mac"=>:guest_mac, "host_dev_name"=>:host_dev_name, "allow_mmds_requests"=>:allow_mmds_requests, "rx_rate_limiter"=>:rx_rate_limiter, "tx_rate_limiter"=>:tx_rate_limiter])
const _field_map_NetworkInterface = Dict{Symbol,String}([:iface_id=>"iface_id", :guest_mac=>"guest_mac", :host_dev_name=>"host_dev_name", :allow_mmds_requests=>"allow_mmds_requests", :rx_rate_limiter=>"rx_rate_limiter", :tx_rate_limiter=>"tx_rate_limiter"])
Swagger.name_map(::Type{ NetworkInterface }) = _name_map_NetworkInterface
Swagger.field_map(::Type{ NetworkInterface }) = _field_map_NetworkInterface

function check_required(o::NetworkInterface)
    (o.iface_id === nothing) && (return false)
    (o.host_dev_name === nothing) && (return false)
    true
end

function validate_field(o::NetworkInterface, name::Symbol, val)
end
