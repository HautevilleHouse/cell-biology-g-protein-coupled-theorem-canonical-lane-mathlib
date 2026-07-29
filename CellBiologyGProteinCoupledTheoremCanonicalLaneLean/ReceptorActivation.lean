import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  conformationalChange : Prop
  gProteinCoupling : Prop
  activationKinetics : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  gProteinCouplingClosed : R.gProteinCoupling
  activationKineticsClosed : R.activationKinetics

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.gProteinCoupling ∧ R.activationKinetics

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage)
    (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.gProteinCouplingClosed E.activationKineticsClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse