import canonicalLaneMathlib.GateLemmas
import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse