import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.RibosomeStructurePackage
import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure RibosomeAnalyticFoundation where
  primitiveSystem : PrimitiveRibosomeSystem
  primitiveEvidence : PrimitiveRibosomeEvidence primitiveSystem
  structurePackage : RibosomeStructurePackage primitiveSystem
  structureEvidence : RibosomeStructureEvidence structurePackage
  translationCycleEvidence : PrimitiveTranslationCycle
  projectionEvidence : Prop

def RibosomeAnalyticFoundationClosed (A : RibosomeAnalyticFoundation) : Prop :=
  PrimitiveRibosomeClosed A.primitiveSystem ∧
  RibosomeStructureClosed A.structurePackage ∧
  A.translationCycleEvidence.elongationCycleSteps > 0

theorem ribosome_analytic_foundation_closed_from_evidence (A : RibosomeAnalyticFoundation) :
    RibosomeAnalyticFoundationClosed A := by
  refine And.intro (primitive_ribosome_closed_from_evidence A.primitiveSystem A.primitiveEvidence)
    (And.intro (ribosome_structure_closed_from_evidence A.structurePackage A.structureEvidence)
      ?_)
  have h : A.translationCycleEvidence.elongationCycleSteps > 0 := by
    have pos : 0 < A.translationCycleEvidence.elongationCycleSteps := by
      have hpos : A.translationCycleEvidence.elongationCycleSteps ≥ 1 := by
        -- Using the axiom that any PrimitiveTranslationCycle has positive steps
        exact Nat.one_le_of_lt (PrimitiveTranslationCycle.positive_steps A.translationCycleEvidence)
      exact hpos
    exact pos
  exact h

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse