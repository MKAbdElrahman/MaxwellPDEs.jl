@with_kw struct PlaneWaveSource{GeometryType,E <: AbstractExcitation} <: AbstractSource
    geometry::GeometryType
    excitation::E
    polarization::Vec
    propagation_direction::Vec
end

excitation(planewave_source::PlaneWaveSource) = planewave_source.excitation
propagation_direction(planewave_source::PlaneWaveSource) = planewave_source.propagation_direction

kââ(planewave_source::PlaneWaveSource) =  kâ(excitation(planewave_source))  .* propagation_direction(planewave_source)