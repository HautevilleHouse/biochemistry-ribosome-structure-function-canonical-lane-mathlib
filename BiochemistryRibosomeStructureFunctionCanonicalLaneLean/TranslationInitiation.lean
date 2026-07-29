import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure TranslationInitiationPackage where
  mrnaRecognition : Prop
  smallSubunitBinding : Prop
  startCodonSelection : Prop
  largeSubunitJoining : Prop

structure TranslationInitiationEvidence (T : TranslationInitiationPackage) where
  mrnaRecognitionClosed : T.mrnaRecognition
  smallSubunitBindingClosed : T.smallSubunitBinding
  startCodonSelectionClosed : T.startCodonSelection
  largeSubunitJoiningClosed : T.largeSubunitJoining

def TranslationInitiationClosed (T : TranslationInitiationPackage) : Prop :=
  T.mrnaRecognition ∧ T.smallSubunitBinding ∧ T.startCodonSelection ∧ T.largeSubunitJoining

theorem translation_initiation_closed_from_evidence (T : TranslationInitiationPackage)
    (E : TranslationInitiationEvidence T) : TranslationInitiationClosed T := by
  exact And.intro E.mrnaRecognitionClosed
    (And.intro E.smallSubunitBindingClosed
      (And.intro E.startCodonSelectionClosed E.largeSubunitJoiningClosed))

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse