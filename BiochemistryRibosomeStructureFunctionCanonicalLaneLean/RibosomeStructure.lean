import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure RibosomeSubunit where
  largeSubunit : Type u
  smallSubunit : Type v
  rRNAComponents : List String
  proteinComponents : List String

structure TranslationFactors where
  initiationFactors : List String
  elongationFactors : List String
  releaseFactors : List String

structure RibosomeAdmittedObject where
  subunit : RibosomeSubunit
  factors : TranslationFactors
  mrnaBindingSite : Prop
  trnaBindingSites : Prop
  peptidylTransferaseCenter : Prop
  gtpaseActivity : Prop
  conclusion : peptidylTransferaseCenter ∧ gtpaseActivity

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.peptidylTransferaseCenter ∧ O.gtpaseActivity

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse