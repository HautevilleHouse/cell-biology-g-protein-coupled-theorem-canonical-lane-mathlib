import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure LigandBindingPackage (M : GProteinCoupledReceptor) where
  ligand : Type u
  bindingAffinity : Prop
  conformationalChange : Prop
  gProteinActivation : Prop

structure LigandBindingEvidence {M : GProteinCoupledReceptor} (L : LigandBindingPackage M) where
  bindingAffinityClosed : L.bindingAffinity
  conformationalChangeClosed : L.conformationalChange
  gProteinActivationClosed : L.gProteinActivation

def LigandBindingClosed {M : GProteinCoupledReceptor} (L : LigandBindingPackage M) : Prop :=
  L.bindingAffinity ∧ L.conformationalChange ∧ L.gProteinActivation

theorem ligand_binding_closed_from_evidence
    {M : GProteinCoupledReceptor} (L : LigandBindingPackage M) (E : LigandBindingEvidence L) :
    LigandBindingClosed L := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.gProteinActivationClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse