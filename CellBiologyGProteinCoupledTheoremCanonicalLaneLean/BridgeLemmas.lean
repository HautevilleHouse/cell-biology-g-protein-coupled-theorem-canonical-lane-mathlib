import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReceptorActivationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse