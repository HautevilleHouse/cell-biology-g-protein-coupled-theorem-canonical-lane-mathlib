import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRActivationPackage where
  receptorConformationChange : Prop
  gProteinBinding : Prop
  nucleotideExchange : Prop
  downstreamSignaling : Prop

structure GPCRActivationEvidence (P : GPCRActivationPackage) where
  receptorConformationChangeClosed : P.receptorConformationChange
  gProteinBindingClosed : P.gProteinBinding
  nucleotideExchangeClosed : P.nucleotideExchange
  downstreamSignalingClosed : P.downstreamSignaling

def GPCRActivationClosed (P : GPCRActivationPackage) : Prop :=
  P.receptorConformationChange ∧ P.gProteinBinding ∧
  P.nucleotideExchange ∧ P.downstreamSignaling

theorem gpcr_activation_closed_from_evidence
    (P : GPCRActivationPackage) (E : GPCRActivationEvidence P) :
    GPCRActivationClosed P := by
  exact And.intro E.receptorConformationChangeClosed
    (And.intro E.gProteinBindingClosed
      (And.intro E.nucleotideExchangeClosed E.downstreamSignalingClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse
