[![Build Status](https://travis-ci.com/milankl/coolFFT.jl.svg?branch=master)](https://travis-ci.com/milankl/coolFFT.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/milankl/coolFFT.jl?svg=true)](https://ci.appveyor.com/project/milankl/coolFFT-jl)
[![Build Status](https://api.cirrus-ci.com/github/milankl/coolFFT.jl.svg)](https://cirrus-ci.com/github/milankl/coolFFT.jl)

# coolFFT

A pure-Julia type-flexible implementation of the [Cooley-Tukey FFT algorithm](https://en.wikipedia.org/wiki/Cooley%E2%80%93Tukey_FFT_algorithm)

# Usage

```julia
using SoftPosit
using coolFFT

x = Posit16.(collect(1:8.0));
y = coolfft(x)
```
returns
```julia
julia> y
8-element Array{Complex{Posit16},1}:
 Posit16(0x7480) + Posit16(0x0000)im
 Posit16(0xa000) + Posit16(0x69a8)im
 Posit16(0xa000) + Posit16(0x6000)im
 Posit16(0xa000) + Posit16(0x4a88)im
 Posit16(0xa000) + Posit16(0x0000)im
 Posit16(0xa000) - Posit16(0x4a80)im
 Posit16(0xa000) - Posit16(0x6000)im
 Posit16(0xa000) - Posit16(0x69a8)im
```

# Installation
```julia
] add https://github.com/milankl/coolFFT.jl
```
