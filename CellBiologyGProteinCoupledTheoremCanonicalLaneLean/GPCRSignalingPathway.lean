import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRLigandBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  gProteinActivation : Prop

structure GPCRLigandBindingEvidence (G : GPCRLigandBindingPackage) where
  bindingAffinityClosed : G.bindingAffinity
  conformationalChangeClosed : G.conformationalChange
  gProteinActivationClosed : G.gProteinActivation

def GPCRLigandBindingClosed (G : GPCRLigandBindingPackage) : Prop :=
  G.bindingAffinity ∧ G.conformationalChange ∧ G.gProteinActivation

theorem gpcR_ligand_binding_closed_from_evidence (G : GPCRLigandBindingPackage)
    (E : GPCRLigandBindingEvidence G) : GPCRLigandBindingClosed G := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed E.gProteinActivationClosed)

end HautevilleHouse
end HautevilleHouse
