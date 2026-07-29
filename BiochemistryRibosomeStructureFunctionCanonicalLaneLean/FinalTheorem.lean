import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

def ConstrainedRibosomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribosome_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse