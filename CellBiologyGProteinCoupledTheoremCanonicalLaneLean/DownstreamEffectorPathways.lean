import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledTheoremCanonicalLaneLean

structure DownstreamEffectorPackage where
  mapkSignaling : Prop
  pi3kAktPathway : Prop
  rhoGtpaseRegulation : Prop
  transcriptionalRegulation : Prop

structure DownstreamEffectorEvidence (D : DownstreamEffectorPackage) where
  mapkSignalingClosed : D.mapkSignaling
  pi3kAktPathwayClosed : D.pi3kAktPathway
  rhoGtpaseRegulationClosed : D.rhoGtpaseRegulation
  transcriptionalRegulationClosed : D.transcriptionalRegulation

def DownstreamEffectorClosed (D : DownstreamEffectorPackage) : Prop :=
  D.mapkSignaling ∧ D.pi3kAktPathway ∧ D.rhoGtpaseRegulation ∧ D.transcriptionalRegulation

theorem downstream_effector_closed_from_evidence
    (D : DownstreamEffectorPackage) (E : DownstreamEffectorEvidence D) :
    DownstreamEffectorClosed D := by
  exact And.intro E.mapkSignalingClosed
    (And.intro E.pi3kAktPathwayClosed
      (And.intro E.rhoGtpaseRegulationClosed E.transcriptionalRegulationClosed))

end CellBiologyGProteinCoupledTheoremCanonicalLaneLean
end HautevilleHouse