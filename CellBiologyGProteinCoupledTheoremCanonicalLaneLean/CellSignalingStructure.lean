import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure GProteinCoupledReceptor where
  extracellularDomain : Type
  transmembraneDomain : Type
  intracellularDomain : Type
  ligandBinding : Prop
  conformationalChange : Prop
  activationTerm : ligandBinding -> conformationalChange

def gPCRClosed (R : GProteinCoupledReceptor) : Prop :=
  R.ligandBinding -> R.conformationalChange

structure GProteinComplex where
  alphaSubunit : Type
  betaGammaComplex : Type
  gdpBound : Prop
  gtpExchange : Prop
  subunitDissociation : gtpExchange -> Prop

def gProteinClosed (G : GProteinComplex) : Prop :=
  G.gtpExchange -> G.subunitDissociation G.gtpExchange

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse