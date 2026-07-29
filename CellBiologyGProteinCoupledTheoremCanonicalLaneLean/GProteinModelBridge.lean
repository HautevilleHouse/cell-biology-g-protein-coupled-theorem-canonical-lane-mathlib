import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.CellSignalingStructure
import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.SecondMessengerCascade

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | .motive (R : GProteinCoupledReceptor) => gPCRClosed R
  | .complex (G : GProteinComplex) => gProteinClosed G
  | .cyclase (C : AdenylylCyclase) => adenylylCyclaseClosed C
  | .kinase (K : ProteinKinaseA) => pkaClosed K
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with (R | G | C | K | _)
  · exact fun h => A.endpointSatisfied
  · exact fun h => A.endpointSatisfied
  · exact fun h => A.endpointSatisfied
  · exact fun h => A.endpointSatisfied
  · exact A.remainderRecorded

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse