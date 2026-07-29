import HautevilleHouse.BiochemistryRibosomeStructureFunctionCanonicalLaneLean.RibosomeStructure

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure TranslationElongationPackage {R : RibosomeStructurePackage} where
  elongationFactorBinding : Prop
  GTPHydrolysis : Prop
  ribosomeMobility : Prop
  peptidylTransfer : Prop
  translocation : Prop

structure TranslationElongationEvidence {R : RibosomeStructurePackage}
    (E : TranslationElongationPackage R) where
  elongationFactorBindingClosed : E.elongationFactorBinding
  GTPHydrolysisClosed : E.GTPHydrolysis
  ribosomeMobilityClosed : E.ribosomeMobility
  peptidylTransferClosed : E.peptidylTransfer
  translocationClosed : E.translocation

def TranslationElongationClosed {R : RibosomeStructurePackage}
    (E : TranslationElongationPackage R) : Prop :=
  E.elongationFactorBinding ∧ E.GTPHydrolysis ∧ E.ribosomeMobility ∧
  E.peptidylTransfer ∧ E.translocation

theorem translation_elongation_closed_from_evidence
    {R : RibosomeStructurePackage}
    (E : TranslationElongationPackage R)
    (Ev : TranslationElongationEvidence E) :
    TranslationElongationClosed E := by
  exact And.intro Ev.elongationFactorBindingClosed
    (And.intro Ev.GTPHydrolysisClosed
      (And.intro Ev.ribosomeMobilityClosed
        (And.intro Ev.peptidylTransferClosed
          Ev.translocationClosed)))

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse