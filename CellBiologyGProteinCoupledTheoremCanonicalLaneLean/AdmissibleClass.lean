import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.ReceptorActivation

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ReceptorActivationPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReceptorActivationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse