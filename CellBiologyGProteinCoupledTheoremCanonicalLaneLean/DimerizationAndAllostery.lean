import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure DimerizationPackage where
  homodimerization : Prop
  heterodimerization : Prop
  allostericModulation : Prop
  biasedSignaling : Prop

structure DimerizationEvidence (D : DimerizationPackage) where
  homodimerizationClosed : D.homodimerization
  heterodimerizationClosed : D.heterodimerization
  allostericModulationClosed : D.allostericModulation
  biasedSignalingClosed : D.biasedSignaling

def DimerizationClosed (D : DimerizationPackage) : Prop :=
  D.homodimerization ∧ D.heterodimerization ∧ D.allostericModulation ∧ D.biasedSignaling

theorem dimerization_closed_from_evidence
    (D : DimerizationPackage) (E : DimerizationEvidence D) :
    DimerizationClosed D := by
  exact And.intro E.homodimerizationClosed
    (And.intro E.heterodimerizationClosed
      (And.intro E.allostericModulationClosed E.biasedSignalingClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse