import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRDimerizationPackage where
  homodimerFormation : Prop
  heterodimerFormation : Prop
  functionalConsequences : Prop
  crossTalkModulation : Prop

structure GPCRDimerizationEvidence (P : GPCRDimerizationPackage) where
  homodimerFormationClosed : P.homodimerFormation
  heterodimerFormationClosed : P.heterodimerFormation
  functionalConsequencesClosed : P.functionalConsequences
  crossTalkModulationClosed : P.crossTalkModulation

def GPCRDimerizationClosed (P : GPCRDimerizationPackage) : Prop :=
  P.homodimerFormation ∧ P.heterodimerFormation ∧
  P.functionalConsequences ∧ P.crossTalkModulation

theorem gpcr_dimerization_closed_from_evidence
    (P : GPCRDimerizationPackage) (E : GPCRDimerizationEvidence P) :
    GPCRDimerizationClosed P := by
  exact And.intro E.homodimerFormationClosed
    (And.intro E.heterodimerFormationClosed
      (And.intro E.functionalConsequencesClosed E.crossTalkModulationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse
