import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRSignalingPackage where
  gProteinActivation : Prop
  secondMessengerProduction : Prop
  kinaseCascade : Prop
  cellularResponse : Prop
  signalTermination : Prop

structure GPCRSignalingEvidence (P : GPCRSignalingPackage) where
  gProteinActivationClosed : P.gProteinActivation
  secondMessengerProductionClosed : P.secondMessengerProduction
  kinaseCascadeClosed : P.kinaseCascade
  cellularResponseClosed : P.cellularResponse
  signalTerminationClosed : P.signalTermination

def GPCRSignalingClosed (P : GPCRSignalingPackage) : Prop :=
  P.gProteinActivation ∧ P.secondMessengerProduction ∧
  P.kinaseCascade ∧ P.cellularResponse ∧ P.signalTermination

theorem gpcr_signaling_closed_from_evidence
    (P : GPCRSignalingPackage) (E : GPCRSignalingEvidence P) :
    GPCRSignalingClosed P := by
  exact And.intro E.gProteinActivationClosed
    (And.intro E.secondMessengerProductionClosed
      (And.intro E.kinaseCascadeClosed
        (And.intro E.cellularResponseClosed E.signalTerminationClosed)))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse
