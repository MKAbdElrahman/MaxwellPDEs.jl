@with_kw struct BlochBoundaryCondition <: AbstractBoundaryCondition
    kâ::Vec
end 

function BlochBoundaryCondition(planewave_source::PlaneWaveSource)
    # I think we need to include the refractive index of the surrounding medium
    BlochBoundaryCondition(kââ(planewave_source))
end
