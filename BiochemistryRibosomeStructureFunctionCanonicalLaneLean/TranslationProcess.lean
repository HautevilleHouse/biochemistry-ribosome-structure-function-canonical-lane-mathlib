import RibosomeStructure

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure TranslationProcessPackage (R : RibosomeStructurePackage) where
  initiationComplete : Prop
  elongationCycleActive : Prop
  terminationTriggered : Prop
  peptideBondFormed : Prop

structure TranslationProcessEvidence {R : RibosomeStructurePackage}
    (T : TranslationProcessPackage R) where
  initiationCompleteClosed : T.initiationComplete
  elongationCycleActiveClosed : T.elongationCycleActive
  terminationTriggeredClosed : T.terminationTriggered
  peptideBondFormedClosed : T.peptideBondFormed

def TranslationProcessClosed {R : RibosomeStructurePackage}
    (T : TranslationProcessPackage R) : Prop :=
  T.initiationComplete ∧ T.elongationCycleActive ∧ T.terminationTriggered ∧ T.peptideBondFormed

theorem translation_process_closed_from_evidence {R : RibosomeStructurePackage}
    (T : TranslationProcessPackage R) (E : TranslationProcessEvidence T) :
    TranslationProcessClosed T := by
  exact And.intro E.initiationCompleteClosed
    (And.intro E.elongationCycleActiveClosed
      (And.intro E.terminationTriggeredClosed E.peptideBondFormedClosed))

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse