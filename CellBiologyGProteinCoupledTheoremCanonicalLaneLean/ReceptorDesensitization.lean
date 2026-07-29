import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure ReceptorDesensitizationPackage where
  phosphorylation : Prop
  arrestinBinding : Prop
  internalization : Prop
  resensitization : Prop

structure ReceptorDesensitizationEvidence (R : ReceptorDesensitizationPackage) where
  phosphorylationClosed : R.phosphorylation
  arrestinBindingClosed : R.arrestinBinding
  internalizationClosed : R.internalization
  resensitizationClosed : R.resensitization

def ReceptorDesensitizationClosed (R : ReceptorDesensitizationPackage) : Prop :=
  R.phosphorylation ∧ R.arrestinBinding ∧ R.internalization ∧ R.resensitization

theorem receptor_desensitization_closed_from_evidence
    (R : ReceptorDesensitizationPackage) (E : ReceptorDesensitizationEvidence R) :
    ReceptorDesensitizationClosed R := by
  exact And.intro E.phosphorylationClosed
    (And.intro E.arrestinBindingClosed
      (And.intro E.internalizationClosed E.resensitizationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse