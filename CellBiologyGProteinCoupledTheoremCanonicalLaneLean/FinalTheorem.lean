import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

def ConstrainedGPCRClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gpcr_endgame (A : AdmissibleClass) :
    ConstrainedGPCRClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end HautevilleHouse
