import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GRKPhosphorylation where
  phosphorylationRate : ℝ
  phosphorylationSites : ℕ
  phosphorylationPattern : Prop

structure BetaArrestinRecruitment where
  recruitmentRate : ℝ
  internalizationRate : ℝ
  signalingBias : Prop

structure BetaArrestinBiasPackage where
  grkPhosphorylation : GRKPhosphorylation
  betaArrestinRecruitment : BetaArrestinRecruitment
  biasedSignaling : Prop

structure BetaArrestinBiasEvidence (B : BetaArrestinBiasPackage) where
  phosphorylationPatternClosed : B.grkPhosphorylation.phosphorylationPattern
  signalingBiasClosed : B.betaArrestinRecruitment.signalingBias
  biasedSignalingClosed : B.biasedSignaling

def BetaArrestinBiasClosed (B : BetaArrestinBiasPackage) : Prop :=
  B.grkPhosphorylation.phosphorylationPattern ∧ B.betaArrestinRecruitment.signalingBias ∧ B.biasedSignaling

theorem beta_arrestin_bias_closed_from_evidence (B : BetaArrestinBiasPackage)
    (E : BetaArrestinBiasEvidence B) : BetaArrestinBiasClosed B := by
  exact And.intro E.phosphorylationPatternClosed (And.intro E.signalingBiasClosed E.biasedSignalingClosed)

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse