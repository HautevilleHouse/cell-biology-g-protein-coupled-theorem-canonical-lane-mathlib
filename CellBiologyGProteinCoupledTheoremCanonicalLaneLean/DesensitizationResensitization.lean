import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure ReceptorDesensitization where
  desensitizationRate : ℝ
  phosphorylationDependence : Prop
  arrestinMediation : Prop

structure ReceptorResensitization where
  resensitizationRate : ℝ
  dephosphorylationRate : ℝ
  recyclingEfficiency : ℝ → ℝ
  recyclingEfficiencyDefined : ∀ t, 0 ≤ recyclingEfficiency t ∧ recyclingEfficiency t ≤ 1

structure DesensitizationResensitizationPackage where
  desensitization : ReceptorDesensitization
  resensitization : ReceptorResensitization
  steadyStateRecycling : Prop

structure DesensitizationResensitizationEvidence (D : DesensitizationResensitizationPackage) where
  desensitizationClosed : D.desensitization.arrestinMediation
  resensitizationClosed : D.resensitization.recyclingEfficiencyDefined
  steadyStateRecyclingClosed : D.steadyStateRecycling

def DesensitizationResensitizationClosed (D : DesensitizationResensitizationPackage) : Prop :=
  D.desensitization.arrestinMediation ∧ D.resensitization.recyclingEfficiencyDefined ∧ D.steadyStateRecycling

theorem desensitization_resensitization_closed_from_evidence (D : DesensitizationResensitizationPackage)
    (E : DesensitizationResensitizationEvidence D) : DesensitizationResensitizationClosed D := by
  exact And.intro E.desensitizationClosed (And.intro E.resensitizationClosed E.steadyStateRecyclingClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse