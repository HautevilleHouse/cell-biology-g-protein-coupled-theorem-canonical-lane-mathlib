import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure CellSurfaceModel where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : receptorType → ligandType → Prop
  signalInitiated : Prop
  transductionMembraneBound : Prop

structure CellSurfaceEvidence (M : CellSurfaceModel) where
  bindingAffinityClosed : M.bindingAffinity
  signalInitiatedClosed : M.signalInitiated
  transductionMembraneBoundClosed : M.transductionMembraneBound

def CellSurfaceClosed (M : CellSurfaceModel) : Prop :=
  M.bindingAffinity ∧ M.signalInitiated ∧ M.transductionMembraneBound

theorem cell_surface_closed_from_evidence (M : CellSurfaceModel) 
    (E : CellSurfaceEvidence M) : CellSurfaceClosed M := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.signalInitiatedClosed E.transductionMembraneBoundClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse