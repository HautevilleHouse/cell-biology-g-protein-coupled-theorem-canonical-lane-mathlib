import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure LigandBindingKinetics where
  associationRate : ℝ
  dissociationRate : ℝ
  bindingAffinity : Prop

structure ConformationalChangeDynamics where
  activationRate : ℝ
  inactivationRate : ℝ
  activeStateFraction : ℝ → ℝ
  activeStateFractionDefined : ∀ t, 0 ≤ activeStateFraction t ∧ activeStateFraction t ≤ 1

structure MembraneReceptorDynamicsPackage where
  ligandBinding : LigandBindingKinetics
  conformationalChange : ConformationalChangeDynamics
  receptorDensity : ℝ
  receptorDensityPositive : receptorDensity > 0

structure MembraneReceptorDynamicsEvidence (M : MembraneReceptorDynamicsPackage) where
  bindingAffinityClosed : M.ligandBinding.bindingAffinity
  activeStateFractionDefinedClosed : M.conformationalChange.activeStateFractionDefined
  receptorDensityPositiveClosed : M.receptorDensityPositive

def MembraneReceptorDynamicsClosed (M : MembraneReceptorDynamicsPackage) : Prop :=
  M.ligandBinding.bindingAffinity ∧ M.conformationalChange.activeStateFractionDefined ∧ M.receptorDensityPositive

theorem membrane_receptor_dynamics_closed_from_evidence (M : MembraneReceptorDynamicsPackage)
    (E : MembraneReceptorDynamicsEvidence M) : MembraneReceptorDynamicsClosed M := by
  exact And.intro E.bindingAffinityClosed (And.intro E.activeStateFractionDefinedClosed E.receptorDensityPositiveClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse