import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RibosomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RibosomeAdmittedObject where
  space : RibosomeSpace
  functionalComplex : Prop
  peptideBondFormation : Prop
  translationActivity : Prop
  conclusion : translationActivity

structure RibosomeEndgameState where
  object : RibosomeAdmittedObject

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.translationActivity


end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse