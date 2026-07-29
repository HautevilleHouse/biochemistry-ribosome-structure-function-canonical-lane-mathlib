import PeptideBondFormation

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure RibosomeAnalyticFoundation (R : RibosomeStructurePackage) where
  translation : TranslationProcessPackage R
  translationEvidence : TranslationProcessEvidence translation
  peptideBond : PeptideBondFormationPackage translation
  peptideBondEvidence : PeptideBondFormationEvidence peptideBond

def RibosomeAnalyticFoundationClosed {R : RibosomeStructurePackage}
    (A : RibosomeAnalyticFoundation R) : Prop :=
  TranslationProcessClosed A.translation ∧ PeptideBondFormationClosed A.peptideBond

theorem ribosome_analytic_foundation_closed_from_evidence {R : RibosomeStructurePackage}
    (A : RibosomeAnalyticFoundation R) : RibosomeAnalyticFoundationClosed A := by
  exact And.intro (translation_process_closed_from_evidence A.translation A.translationEvidence)
    (peptide_bond_formation_closed_from_evidence A.peptideBond A.peptideBondEvidence)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse