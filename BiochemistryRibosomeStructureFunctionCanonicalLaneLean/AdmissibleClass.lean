import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RibosomeObject where
  subunitStructure : Type
  rrnaComponents : Type
  proteinFactors : Type
  functionalState : Prop
  conclusion : functionalState

structure AdmissibleClass where
  object : RibosomeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse