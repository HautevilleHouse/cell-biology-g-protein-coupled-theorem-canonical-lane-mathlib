import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRConformationalStatesPackage where
  inactiveState : Prop
  activeState : Prop
  intermediateStates : Prop
  allostericModulation : Prop
  biasedAgonism : Prop

structure GPCRConformationalStatesEvidence (P : GPCRConformationalStatesPackage) where
  inactiveStateClosed : P.inactiveState
  activeStateClosed : P.activeState
  intermediateStatesClosed : P.intermediateStates
  allostericModulationClosed : P.allostericModulation
  biasedAgonismClosed : P.biasedAgonism

def GPCRConformationalStatesClosed (P : GPCRConformationalStatesPackage) : Prop :=
  P.inactiveState ∧ P.activeState ∧ P.intermediateStates ∧
  P.allostericModulation ∧ P.biasedAgonism

theorem gpcr_conformational_states_closed_from_evidence
    (P : GPCRConformationalStatesPackage) (E : GPCRConformationalStatesEvidence P) :
    GPCRConformationalStatesClosed P := by
  exact And.intro E.inactiveStateClosed
    (And.intro E.activeStateClosed
      (And.intro E.intermediateStatesClosed
        (And.intro E.allostericModulationClosed E.biasedAgonismClosed)))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse
