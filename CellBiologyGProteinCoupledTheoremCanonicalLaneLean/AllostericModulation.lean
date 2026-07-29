import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure OrthostericBinding where
  affinity : ℝ
  efficacy : ℝ
  orthostericEffect : Prop

structure AllostericBinding where
  bindingConstant : ℝ
  cooperativityFactor : ℝ
  allostericEffect : Prop

structure AllostericModulationPackage where
  orthostericBinding : OrthostericBinding
  allostericBinding : AllostericBinding
  modulatoryEffect : Prop

structure AllostericModulationEvidence (A : AllostericModulationPackage) where
  orthostericEffectClosed : A.orthostericBinding.orthostericEffect
  allostericEffectClosed : A.allostericBinding.allostericEffect
  modulatoryEffectClosed : A.modulatoryEffect

def AllostericModulationClosed (A : AllostericModulationPackage) : Prop :=
  A.orthostericBinding.orthostericEffect ∧ A.allostericBinding.allostericEffect ∧ A.modulatoryEffect

theorem allosteric_modulation_closed_from_evidence (A : AllostericModulationPackage)
    (E : AllostericModulationEvidence A) : AllostericModulationClosed A := by
  exact And.intro E.orthostericEffectClosed (And.intro E.allostericEffectClosed E.modulatoryEffectClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse