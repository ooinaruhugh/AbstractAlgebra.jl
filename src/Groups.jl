###############################################################################
#
#   Groups.jl : AbstractAlgebra groups
#
###############################################################################

struct InfiniteOrder{T} <: Exception
    x::T
    InfiniteOrder(g::Union{GroupElem, Group}) = new{typeof(g)}(g)
end

function Base.showerror(io::IO, err::InfiniteOrder{T}) where T
    println(io, "Infinite order exception with ", err.x)
    print(io, "order will only return a value when it is finite. ")
    f = if T <: Group
        "isfinite(G)"
    elseif T <: GroupElem
        "isfiniteorder(g)"
    end
    print(io, "You should check with `$f` first.")
end

elem_type(T::Type{<:Group}) = eltype(T)

@doc raw"""
    order(::Type{T} = BigInt, G::Group) where T

Return the order of $G$ as an instance of `T`. If $G$ is of infinite order,
`GroupsCore.InfiniteOrder` exception will be thrown.

!!! warning

    Only arbitrary sized integers are required to return a mathematically
    correct answer.
"""
function order(::Type{T}, G::Group) where T
    if !isfinite(G)
        throw(InfiniteOrder(G))
    end
    throw(NotImplementedError(:order, G))
end

# if no return type has been specified, default to `BigInt`
# FIXME: in Nemo we will want to replace them by using ZZRingElem instead;
# that then will be "type piracy". Which we could avoid by dropping these methods
# here ...
order(G::Group) = order(BigInt, G)
order(g::GroupElem) = order(BigInt, g)


@doc raw"""
    is_trivial(G::Group)

Test whether group $G$ is trivial.

The default implementation is based on `isfinite` and `order`.
"""
function is_trivial(G::Group)
    hasgens(G) && return all(isone, gens(G))
    isfinite(G) && return isone(order(G))
    return false
end

hasgens(G::Group) = true


include("NCRings.jl")
