import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.TranslationElongationPackage

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure InitiationTerminationPackage {P : RibosomeStructurePackage}
    {E : TranslationElongationPackage P} where
  initiationFactors : List Type
  startCodonRecognition : Prop
  terminationFactors : List Type
  stopCodonRecognition : Prop
  ribosomeRecycling : Prop

structure InitiationTerminationEvidence {P : RibosomeStructurePackage}
    {E : TranslationElongationPackage P} (I : InitiationTerminationPackage P E) where
  startCodonRecognitionClosed : I.startCodonRecognition
  stopCodonRecognitionClosed : I.stopCodonRecognition
  ribosomeRecyclingClosed : I.ribosomeRecycling

def InitiationTerminationClosed {P : RibosomeStructurePackage}
    {E : TranslationElongationPackage P} (I : InitiationTerminationPackage P E) : Prop :=
  I.startCodonRecognition ∧ I.stopCodonRecognition ∧ I.ribosomeRecycling

theorem initiation_termination_closed_from_evidence
    {P : RibosomeStructurePackage} {E : TranslationElongationPackage P}
    (I : InitiationTerminationPackage P E) (Ev : InitiationTerminationEvidence I) :
    InitiationTerminationClosed I := by
  exact And.intro Ev.startCodonRecognitionClosed
    (And.intro Ev.stopCodonRecognitionClosed Ev.ribosomeRecyclingClosed)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse