import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure SecondMessengerPackage where
  campProduction : Prop
  calciumMobilization : Prop
  ip3DagPathway : Prop
  proteinKinaseActivation : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  campProductionClosed : S.campProduction
  calciumMobilizationClosed : S.calciumMobilization
  ip3DagPathwayClosed : S.ip3DagPathway
  proteinKinaseActivationClosed : S.proteinKinaseActivation

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.campProduction ∧ S.calciumMobilization ∧ S.ip3DagPathway ∧ S.proteinKinaseActivation

theorem second_messenger_closed_from_evidence
    (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.campProductionClosed
    (And.intro E.calciumMobilizationClosed
      (And.intro E.ip3DagPathwayClosed E.proteinKinaseActivationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse