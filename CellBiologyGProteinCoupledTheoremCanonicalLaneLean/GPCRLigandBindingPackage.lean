import HautevilleHouse.CellBiologyGProteinCoupledTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GPCRLigandBindingPackage where
  associationRate : Prop
  dissociationRate : Prop
  affinityConstant : Prop
  bindingSiteOccupancy : Prop
  ligandSpecificity : Prop

structure GPCRLigandBindingEvidence (P : GPCRLigandBindingPackage) where
  associationRateClosed : P.associationRate
  dissociationRateClosed : P.dissociationRate
  affinityConstantClosed : P.affinityConstant
  bindingSiteOccupancyClosed : P.bindingSiteOccupancy
  ligandSpecificityClosed : P.ligandSpecificity

def GPCRLigandBindingClosed (P : GPCRLigandBindingPackage) : Prop :=
  P.associationRate ∧ P.dissociationRate ∧ P.affinityConstant ∧
  P.bindingSiteOccupancy ∧ P.ligandSpecificity

theorem gpcr_ligand_binding_closed_from_evidence
    (P : GPCRLigandBindingPackage) (E : GPCRLigandBindingEvidence P) :
    GPCRLigandBindingClosed P := by
  exact And.intro E.associationRateClosed
    (And.intro E.dissociationRateClosed
      (And.intro E.affinityConstantClosed
        (And.intro E.bindingSiteOccupancyClosed E.ligandSpecificityClosed)))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse
