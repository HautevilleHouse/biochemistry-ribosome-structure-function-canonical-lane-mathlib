import canonicalLaneMathlib.BridgeLemmas
import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RibosomeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse