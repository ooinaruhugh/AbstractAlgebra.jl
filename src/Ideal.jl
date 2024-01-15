###############################################################################
#
#   Ideal constructor
#
###############################################################################

function ideal
end

ideal(R::Ring, g::Vector{<:RingElement}) = Generic.Ideal(R, g)
ideal(R::Ring, v::T, vs::T...) where T <: RingElement = Generic.Ideal(R,[v,vs...])
ideal(R::Ring) = Generic.Ideal(R)
ideal(R::Ring, V::Vector{Any}) = Generic.Ideal(R, V)

function *(x::RingElement, R::Ring)
  return ideal(R, x)
end

function *(R::Ring, x::RingElement)
  return ideal(R, x)
end

iszero(I::Ideal) = all(iszero, gens(I))
