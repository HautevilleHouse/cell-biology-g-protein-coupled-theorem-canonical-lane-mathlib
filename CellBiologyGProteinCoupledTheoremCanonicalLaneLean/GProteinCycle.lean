import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.ReceptorActivation

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GProteinCyclePackage {R : ReceptorActivationPackage} where
  gtpBinding : Prop
  subunitDissociation : Prop
  effectorActivation : Prop
  gtpHydrolysis : Prop
  subunitReassociation : Prop

structure GProteinCycleEvidence {R : ReceptorActivationPackage}
    (C : GProteinCyclePackage R) where
  gtpBindingClosed : C.gtpBinding
  subunitDissociationClosed : C.subunitDissociation
  effectorActivationClosed : C.effectorActivation
  gtpHydrolysisClosed : C.gtpHydrolysis
  subunitReassociationClosed : C.subunitReassociation

def GProteinCycleClosed {R : ReceptorActivationPackage}
    (C : GProteinCyclePackage R) : Prop :=
  C.gtpBinding ∧ C.subunitDissociation ∧ C.effectorActivation ∧
  C.gtpHydrolysis ∧ C.subunitReassociation

theorem g_protein_cycle_closed_from_evidence {R : ReceptorActivationPackage}
    (C : GProteinCyclePackage R) (E : GProteinCycleEvidence C) :
    GProteinCycleClosed C := by
  exact And.intro E.gtpBindingClosed
    (And.intro E.subunitDissociationClosed
      (And.intro E.effectorActivationClosed
        (And.intro E.gtpHydrolysisClosed E.subunitReassociationClosed)))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse