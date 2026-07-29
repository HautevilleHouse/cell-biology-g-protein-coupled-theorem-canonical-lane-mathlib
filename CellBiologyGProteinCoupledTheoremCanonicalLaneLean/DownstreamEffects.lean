import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure IonChannel where
  phosphorylated : Prop
  openState : Prop
  phosphorylationLeadsToOpen : phosphorylated -> openState

def ionChannelClosed (I : IonChannel) : Prop :=
  I.phosphorylated -> I.openState

structure GeneRegulation where
  transcriptionFactorActivated : Prop
  targetGeneExpression : Prop
  geneExpressionTriggered : transcriptionFactorActivated -> targetGeneExpression

def geneRegulationClosed (G : GeneRegulation) : Prop :=
  G.transcriptionFactorActivated -> G.targetGeneExpression

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse