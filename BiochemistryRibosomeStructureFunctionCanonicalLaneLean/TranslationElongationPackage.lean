import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.RibosomeStructurePackage

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure TranslationElongationPackage {P : RibosomeStructurePackage} where
  elongationFactors : List Type
  peptidylTransferaseActivity : Prop
  translocationStep : Prop
  codonAnticodonPairing : Prop

structure TranslationElongationEvidence {P : RibosomeStructurePackage}
    (E : TranslationElongationPackage P) where
  peptidylTransferaseActivityClosed : E.peptidylTransferaseActivity
  translocationStepClosed : E.translocationStep
  codonAnticodonPairingClosed : E.codonAnticodonPairing

def TranslationElongationClosed {P : RibosomeStructurePackage}
    (E : TranslationElongationPackage P) : Prop :=
  E.peptidylTransferaseActivity ∧ E.translocationStep ∧ E.codonAnticodonPairing

theorem translation_elongation_closed_from_evidence
    {P : RibosomeStructurePackage} (E : TranslationElongationPackage P)
    (Ev : TranslationElongationEvidence E) : TranslationElongationClosed E := by
  exact And.intro Ev.peptidylTransferaseActivityClosed
    (And.intro Ev.translocationStepClosed Ev.codonAnticodonPairingClosed)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse