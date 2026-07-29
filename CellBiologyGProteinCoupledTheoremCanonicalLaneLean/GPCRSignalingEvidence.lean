import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGProteinCoupledTheoremCanonicalLaneLean.CellSurfaceModel
import CellBiologyGProteinCoupledTheoremCanonicalLaneLean.GProteinCycle
import CellBiologyGProteinCoupledTheoremCanonicalLaneLean.SecondMessengerCascade

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRSignalingEvidence where
  cellSurface : CellSurfaceClosed
  gProteinCycle : GProteinCycleClosed
  secondMessenger : SecondMessengerCascadeClosed

def GPCRSignalingClosed (E : GPCRSignalingEvidence) : Prop :=
  E.cellSurface ∧ E.gProteinCycle ∧ E.secondMessenger

theorem gpcr_signaling_closed (E : GPCRSignalingEvidence) :
    GPCRSignalingClosed E := by
  exact And.intro E.cellSurface (And.intro E.gProteinCycle E.secondMessenger)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse