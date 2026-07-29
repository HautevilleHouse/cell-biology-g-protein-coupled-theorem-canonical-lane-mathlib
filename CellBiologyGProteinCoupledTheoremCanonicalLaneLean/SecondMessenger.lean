import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.SignalTransduction

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure SecondMessengerPackage {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} {S : SignalTransductionPackage C} where
  campProduction : Prop
  calciumMobilization : Prop
  kinaseActivation : Prop
  cellularResponse : Prop

structure SecondMessengerEvidence {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} {S : SignalTransductionPackage C}
    (M : SecondMessengerPackage S) where
  campProductionClosed : M.campProduction
  calciumMobilizationClosed : M.calciumMobilization
  kinaseActivationClosed : M.kinaseActivation
  cellularResponseClosed : M.cellularResponse

def SecondMessengerClosed {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} {S : SignalTransductionPackage C}
    (M : SecondMessengerPackage S) : Prop :=
  M.campProduction ∧ M.calciumMobilization ∧
  M.kinaseActivation ∧ M.cellularResponse

theorem second_messenger_closed_from_evidence {R : ReceptorActivationPackage}
    {C : GProteinCyclePackage R} {S : SignalTransductionPackage C}
    (M : SecondMessengerPackage S) (E : SecondMessengerEvidence M) :
    SecondMessengerClosed M := by
  exact And.intro E.campProductionClosed
    (And.intro E.calciumMobilizationClosed
      (And.intro E.kinaseActivationClosed E.cellularResponseClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse