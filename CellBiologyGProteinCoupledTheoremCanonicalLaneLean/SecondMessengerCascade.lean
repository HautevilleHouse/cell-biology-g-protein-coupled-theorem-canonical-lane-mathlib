import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure AdenylylCyclase where
  activated : Prop
  campProduction : Prop
  activationLeadsToCamp : activated -> campProduction

def adenylylCyclaseClosed (A : AdenylylCyclase) : Prop :=
  A.activated -> A.campProduction

structure ProteinKinaseA where
  campBinding : Prop
  catalyticSubunitActive : Prop
  kinaseActivation : campBinding -> catalyticSubunitActive

def pkaClosed (P : ProteinKinaseA) : Prop :=
  P.campBinding -> P.catalyticSubunitActive

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse