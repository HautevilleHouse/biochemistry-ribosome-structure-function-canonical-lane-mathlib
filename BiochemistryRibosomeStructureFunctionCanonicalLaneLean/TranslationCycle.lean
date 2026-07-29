import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure TranslationCycleStep where
  stepName : String
  gtpHydrolysis : Prop
  trnaTranslocation : Prop
  peptideBondFormation : Prop

structure TranslationCycleEvidence (S : TranslationCycleStep) where
  gtpHydrolysisClosed : S.gtpHydrolysis
  trnaTranslocationClosed : S.trnaTranslocation
  peptideBondFormationClosed : S.peptideBondFormation

def TranslationCycleClosed (S : TranslationCycleStep) : Prop :=
  S.gtpHydrolysis ∧ S.trnaTranslocation ∧ S.peptideBondFormation

theorem translation_cycle_closed_from_evidence
    (S : TranslationCycleStep) (E : TranslationCycleEvidence S) :
    TranslationCycleClosed S := by
  exact And.intro E.gtpHydrolysisClosed
    (And.intro E.trnaTranslocationClosed E.peptideBondFormationClosed)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse