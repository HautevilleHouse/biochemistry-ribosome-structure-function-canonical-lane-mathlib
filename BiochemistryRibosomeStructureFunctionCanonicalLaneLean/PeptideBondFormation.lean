import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure PeptideBondFormationPackage where
  aminoacylTrnaBinding : Prop
  peptidylTransferaseActivity : Prop
  translocation : Prop
  elongationCycleComplete : Prop

structure PeptideBondFormationEvidence (P : PeptideBondFormationPackage) where
  aminoacylTrnaBindingClosed : P.aminoacylTrnaBinding
  peptidylTransferaseActivityClosed : P.peptidylTransferaseActivity
  translocationClosed : P.translocation
  elongationCycleCompleteClosed : P.elongationCycleComplete

def PeptideBondFormationClosed (P : PeptideBondFormationPackage) : Prop :=
  P.aminoacylTrnaBinding ∧ P.peptidylTransferaseActivity ∧ P.translocation ∧ P.elongationCycleComplete

theorem peptide_bond_formation_closed_from_evidence (P : PeptideBondFormationPackage)
    (E : PeptideBondFormationEvidence P) : PeptideBondFormationClosed P := by
  exact And.intro E.aminoacylTrnaBindingClosed
    (And.intro E.peptidylTransferaseActivityClosed
      (And.intro E.translocationClosed E.elongationCycleCompleteClosed))

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse