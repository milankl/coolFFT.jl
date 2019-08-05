"""Cooley-Tukey FFT algorithm."""
function coolfft(x::Array{T,1}) where {T<:AbstractFloat}

    y1 = Complex{T}[]
    y2 = Complex{T}[]

    n = length(x)
    if n == 1
        return x
    end

    y_even = coolfft(x[1:2:end])
    y_odd = coolfft(x[2:2:end])

    w = one(T)
    for k in 1:Int(n/2)
        push!(y1, y_even[k] + w*y_odd[k])
        push!(y2, y_even[k] - w*y_odd[k])
        w = w*wn(T,n)
    end

    return vcat(y1,y2)
end

""" Twiddle factors computed with Float64 and converted back."""
function wn(::Type{T},n::Int) where {T<:AbstractFloat}
    return Complex{T}(exp(-2*π*im/n))
end
