import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GProteinActivationPackage {G : GPCRLigandBindingPackage} where
  gdpRelease : Prop
  gtpBinding : Prop
  subunitDissociation : Prop
  downstreamSignaling : Prop

structure GProteinActivationEvidence {G : GPCRLigandBindingPackage}
    (A : GProteinActivationPackage G) where
  gdpReleaseClosed : A.gdpRelease
  gtpBindingClosed : A.gtpBinding
  subunitDissociationClosed : A.subunitDissociation
  downstreamSignalingClosed : A.downstreamSignaling

def GProteinActivationClosed {G : GPCRLigandBindingPackage}
    (A : GProteinActivationPackage G) : Prop :=
  A.gdpRelease ∧ A.gtpBinding ∧ A.subunitDissociation ∧ A.downstreamSignaling

theorem g_protein_activation_closed_from_evidence {G : GPCRLigandBindingPackage}
    (A : GProteinActivationPackage G) (E : GProteinActivationEvidence A) :
    GProteinActivationClosed A := by
  exact And.intro E.gdpReleaseClosed
    (And.intro E.gtpBindingClosed
      (And.intro E.subunitDissociationClosed E.downstreamSignalingClosed))

end HautevilleHouse
end HautevilleHouse
