import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.GProteinCycle

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure SignalTransductionPackage {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} where
  cascadeInitiation : Prop
  signalAmplification : Prop
  pathwaySpecificity : Prop
  signalTermination : Prop

structure SignalTransductionEvidence {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} (S : SignalTransductionPackage C) where
  cascadeInitiationClosed : S.cascadeInitiation
  signalAmplificationClosed : S.signalAmplification
  pathwaySpecificityClosed : S.pathwaySpecificity
  signalTerminationClosed : S.signalTermination

def SignalTransductionClosed {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} (S : SignalTransductionPackage C) : Prop :=
  S.cascadeInitiation ∧ S.signalAmplification ∧
  S.pathwaySpecificity ∧ S.signalTermination

theorem signal_transduction_closed_from_evidence {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} (S : SignalTransductionPackage C)
    (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.cascadeInitiationClosed
    (And.intro E.signalAmplificationClosed
      (And.intro E.pathwaySpecificityClosed E.signalTerminationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse