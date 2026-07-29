import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GProteinActivationPackage where
  gdpGtpExchange : Prop
  subunitDissociation : Prop
  effectorActivation : Prop
  gtpHydrolysis : Prop
  reassociation : Prop

structure GProteinActivationEvidence (A : GProteinActivationPackage) where
  gdpGtpExchangeClosed : A.gdpGtpExchange
  subunitDissociationClosed : A.subunitDissociation
  effectorActivationClosed : A.effectorActivation
  gtpHydrolysisClosed : A.gtpHydrolysis
  reassociationClosed : A.reassociation

def GProteinActivationClosed (A : GProteinActivationPackage) : Prop :=
  A.gdpGtpExchange ∧ A.subunitDissociation ∧ A.effectorActivation ∧ A.gtpHydrolysis ∧ A.reassociation

theorem g_protein_activation_closed_from_evidence
    (A : GProteinActivationPackage) (E : GProteinActivationEvidence A) :
    GProteinActivationClosed A := by
  exact And.intro E.gdpGtpExchangeClosed
    (And.intro E.subunitDissociationClosed
      (And.intro E.effectorActivationClosed
        (And.intro E.gtpHydrolysisClosed E.reassociationClosed)))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse