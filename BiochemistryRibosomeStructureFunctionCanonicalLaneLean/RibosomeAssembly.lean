import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure RibosomeAssemblyPackage where
  assemblyFactors : Prop
  rrnaFolding : Prop
  subunitJoining : Prop
  functionalRibosomeFormed : Prop

structure RibosomeAssemblyEvidence (R : RibosomeAssemblyPackage) where
  assemblyFactorsClosed : R.assemblyFactors
  rrnaFoldingClosed : R.rrnaFolding
  subunitJoiningClosed : R.subunitJoining
  functionalRibosomeFormedClosed : R.functionalRibosomeFormed

def RibosomeAssemblyClosed (R : RibosomeAssemblyPackage) : Prop :=
  R.assemblyFactors ∧ R.rrnaFolding ∧ R.subunitJoining ∧ R.functionalRibosomeFormed

theorem ribosome_assembly_closed_from_evidence (R : RibosomeAssemblyPackage)
    (E : RibosomeAssemblyEvidence R) : RibosomeAssemblyClosed R := by
  exact And.intro E.assemblyFactorsClosed
    (And.intro E.rrnaFoldingClosed
      (And.intro E.subunitJoiningClosed E.functionalRibosomeFormedClosed))

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse