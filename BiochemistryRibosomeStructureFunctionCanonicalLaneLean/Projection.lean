import canonicalLaneMathlib.Projection
import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ribosomeProjection : Projection RibosomeEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ribosome_projection_idempotent (x : RibosomeEndgameState) :
    ribosomeProjection.toFun (ribosomeProjection.toFun x) = ribosomeProjection.toFun x := by
  exact ribosomeProjection.idempotent x

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse