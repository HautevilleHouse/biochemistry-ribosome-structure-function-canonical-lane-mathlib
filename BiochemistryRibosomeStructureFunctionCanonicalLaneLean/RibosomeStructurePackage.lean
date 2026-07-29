import BiochemistryRibosomeStructureFunctionCanonicalLaneLean.RibosomeGateLemmas

namespace HautevilleHouse
namespace BiochemistryRibosomeStructureFunctionCanonicalLaneLean

structure RibosomeStructurePackage where
  smallSubunit : Type
  largeSubunit : Type
  rrna16S : Type
  rrna23S : Type
  ribosomalProteins : List Type
  subunitAssociation : Prop
  mrnaChannel : Prop

structure RibosomeStructureEvidence (P : RibosomeStructurePackage) where
  subunitAssociationClosed : P.subunitAssociation
  mrnaChannelClosed : P.mrnaChannel

def RibosomeStructureClosed (P : RibosomeStructurePackage) : Prop :=
  P.subunitAssociation ∧ P.mrnaChannel

theorem ribosome_structure_closed_from_evidence
    (P : RibosomeStructurePackage) (E : RibosomeStructureEvidence P) :
    RibosomeStructureClosed P := by
  exact And.intro E.subunitAssociationClosed E.mrnaChannelClosed

end BiochemistryRibosomeStructureFunctionCanonicalLaneLean
end HautevilleHouse