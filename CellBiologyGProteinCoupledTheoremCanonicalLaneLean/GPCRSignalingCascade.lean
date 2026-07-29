import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GProteinSubunitActivation where
  gdpGtpExchange : ℝ
  gtpHydrolysisRate : ℝ
  subunitDissociation : Prop

structure EffectorActivation where
  adenylylCyclaseActivity : ℝ → ℝ
  phospholipaseCActivity : ℝ → ℝ
  downstreamSecondMessengers : Prop

structure GPCRSignalingCascadePackage where
  receptorActivation : MembraneReceptorDynamicsPackage
  gProteinActivation : GProteinSubunitActivation
  effectorActivation : EffectorActivation
  signalAmplification : Prop

structure GPCRSignalingCascadeEvidence (G : GPCRSignalingCascadePackage) where
  receptorActivationClosed : MembraneReceptorDynamicsClosed G.receptorActivation
  gProteinActivationClosed : G.gProteinActivation.subunitDissociation
  effectorActivationClosed : G.effectorActivation.downstreamSecondMessengers
  signalAmplificationClosed : G.signalAmplification

def GPCRSignalingCascadeClosed (G : GPCRSignalingCascadePackage) : Prop :=
  MembraneReceptorDynamicsClosed G.receptorActivation ∧ G.gProteinActivation.subunitDissociation ∧
  G.effectorActivation.downstreamSecondMessengers ∧ G.signalAmplification

theorem gpcr_signaling_cascade_closed_from_evidence (G : GPCRSignalingCascadePackage)
    (E : GPCRSignalingCascadeEvidence G) : GPCRSignalingCascadeClosed G := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.gProteinActivationClosed (And.intro E.effectorActivationClosed E.signalAmplificationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse