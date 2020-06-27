//
//  MappedDefinitions.swift
//  ManifestReport
//
//  Copyright © 2019 Rob King. All rights reserved.
//

import Foundation


enum MappedDefinition {
    case Table(String)
}

extension MappedDefinition {

    func reference(hash: Int64) -> ManifestRef {
        switch self {
        case .Table(let t):
            return ManifestRef(hash: hash, tableName: t)
        }
    }
}

let mappedDefinitions: [String: MappedDefinition] = [
    "Destiny_Activities_DestinyPublicActivityStatus_challengeObjectiveHashes": .Table("DestinyObjectiveDefinition"),
    "Destiny_Activities_DestinyPublicActivityStatus_modifierHashes": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Character_DestinyItemPeerView_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Collectibles_DestinyProfileCollectiblesComponent_newnessFlaggedCollectibleHashes": .Table("DestinyCollectibleDefinition"),
    "Destiny_Components_Collectibles_DestinyProfileCollectiblesComponent_recentCollectibleHashes": .Table("DestinyCollectibleDefinition"),
    "Destiny_Components_Inventory_DestinyCurrenciesComponent_itemQuantities": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Items_DestinyItemPlugComponent_plugItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Kiosks_DestinyKiosksComponent_kioskItems": .Table("DestinyVendorDefinition"),
    "Destiny_Components_PlugSets_DestinyPlugSetsComponent_plugs": .Table("DestinyPlugSetDefinition"),
    "Destiny_Components_Profiles_DestinyProfileProgressionComponent_checklists": .Table("DestinyChecklistDefinition"),
    "Destiny_Components_Records_DestinyCharacterRecordsComponent_featuredRecordHashes": .Table("DestinyRecordDefinition"),
    "Destiny_Components_Records_DestinyProfileRecordsComponent_trackedRecordHash": .Table("DestinyRecordDefinition"),
    "Destiny_Components_Vendors_DestinyPublicVendorComponent_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Components_Vendors_DestinyPublicVendorSaleItemComponent_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Vendors_DestinyPublicVendorSaleItemComponent_overrideStyleItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Vendors_DestinyVendorBaseComponent_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Components_Vendors_DestinyVendorGroup_vendorGroupHash": .Table("DestinyVendorGroupDefinition"),
    "Destiny_Components_Vendors_DestinyVendorGroup_vendorHashes": .Table("DestinyVendorDefinition"),
    "Destiny_Components_Vendors_DestinyVendorSaleItemBaseComponent_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Components_Vendors_DestinyVendorSaleItemBaseComponent_overrideStyleItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Constants_DestinyEnvironmentLocationMapping_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Constants_DestinyEnvironmentLocationMapping_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Constants_DestinyEnvironmentLocationMapping_locationHash": .Table("DestinyLocationDefinition"),
    "Destiny_Constants_DestinyEnvironmentLocationMapping_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_Checklists_DestinyChecklistEntryDefinition_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Checklists_DestinyChecklistEntryDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Definitions_Checklists_DestinyChecklistEntryDefinition_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_Checklists_DestinyChecklistEntryDefinition_locationHash": .Table("DestinyLocationDefinition"),
    "Destiny_Definitions_Collectibles_DestinyCollectibleAcquisitionBlock_acquireMaterialRequirementHash": .Table("DestinyMaterialRequirementSetDefinition"),
    "Destiny_Definitions_Collectibles_DestinyCollectibleAcquisitionBlock_acquireTimestampUnlockValueHash": .Table("DestinyUnlockValueDefinition"),
    "Destiny_Definitions_Collectibles_DestinyCollectibleDefinition_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_Collectibles_DestinyCollectibleStateBlock_obscuredOverrideItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyActivityChallengeDefinition_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_DestinyActivityDefinition_activityModeHashes": .Table("DestinyActivityModeDefinition"),
    "Destiny_Definitions_DestinyActivityDefinition_activityTypeHash": .Table("DestinyActivityTypeDefinition"),
    "Destiny_Definitions_DestinyActivityDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Definitions_DestinyActivityDefinition_directActivityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Definitions_DestinyActivityDefinition_placeHash": .Table("DestinyPlaceDefinition"),
    "Destiny_Definitions_DestinyActivityGraphListEntryDefinition_activityGraphHash": .Table("DestinyActivityGraphDefinition"),
    "Destiny_Definitions_DestinyActivityLoadoutRequirement_allowedEquippedItemHashes": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyActivityLoadoutRequirement_equipmentSlotHash": .Table("DestinyEquipmentSlotDefinition"),
    "Destiny_Definitions_DestinyActivityModifierReferenceDefinition_activityModifierHash": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Definitions_DestinyActivityPlaylistItemDefinition_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_DestinyActivityPlaylistItemDefinition_activityModeHashes": .Table("DestinyActivityModeDefinition"),
    "Destiny_Definitions_DestinyActivityPlaylistItemDefinition_directActivityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Definitions_DestinyClassDefinition_genderedClassNamesByGenderHash": .Table("DestinyGenderDefinition"),
    "Destiny_Definitions_DestinyClassDefinition_mentorVendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyDestinationDefinition_defaultFreeroamActivityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_DestinyDestinationDefinition_placeHash": .Table("DestinyPlaceDefinition"),
    "Destiny_Definitions_DestinyDisplayCategoryDefinition_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_Definitions_DestinyEquipmentSlotDefinition_bucketTypeHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyEquippingBlockDefinition_equipmentSlotTypeHash": .Table("DestinyEquipmentSlotDefinition"),
    "Destiny_Definitions_DestinyEquippingBlockDefinition_gearsetItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyFactionDefinition_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_Definitions_DestinyFactionDefinition_rewardItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyFactionDefinition_rewardVendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyFactionVendorDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Definitions_DestinyFactionVendorDefinition_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_collectibleHash": .Table("DestinyCollectibleDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_damageTypeHashes": .Table("DestinyDamageTypeDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_defaultDamageTypeHash": .Table("DestinyDamageTypeDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_itemCategoryHashes": .Table("DestinyItemCategoryDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_loreHash": .Table("DestinyLoreDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_seasonHash": .Table("DestinySeasonDefinition"),
    "Destiny_Definitions_DestinyInventoryItemDefinition_summaryItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyInventoryItemStatDefinition_statHash": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyItemActionRequiredItemDefinition_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemCategoryDefinition_groupedCategoryHashes": .Table("DestinyItemCategoryDefinition"),
    "Destiny_Definitions_DestinyItemGearsetBlockDefinition_itemList": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemIntrinsicSocketEntryDefinition_plugItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemIntrinsicSocketEntryDefinition_socketTypeHash": .Table("DestinySocketTypeDefinition"),
    "Destiny_Definitions_DestinyItemInventoryBlockDefinition_bucketTypeHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyItemInventoryBlockDefinition_recoveryBucketTypeHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyItemInventoryBlockDefinition_tierTypeHash": .Table("DestinyItemTierTypeDefinition"),
    "Destiny_Definitions_DestinyItemInvestmentStatDefinition_statTypeHash": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyItemObjectiveBlockDefinition_displayActivityHashes": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_DestinyItemObjectiveBlockDefinition_objectiveHashes": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_DestinyItemObjectiveBlockDefinition_questlineItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemPerkEntryDefinition_perkHash": .Table("DestinySandboxPerkDefinition"),
    "Destiny_Definitions_DestinyItemPreviewBlockDefinition_previewVendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyItemQualityBlockDefinition_progressionLevelRequirementHash": .Table("DestinyProgressionLevelRequirementDefinition"),
    "Destiny_Definitions_DestinyItemSetBlockEntryDefinition_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemSocketCategoryDefinition_socketCategoryHash": .Table("DestinySocketCategoryDefinition"),
    "Destiny_Definitions_DestinyItemSocketEntryDefinition_singleInitialItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemSocketEntryDefinition_socketTypeHash": .Table("DestinySocketTypeDefinition"),
    "Destiny_Definitions_DestinyItemSocketEntryPlugItemDefinition_plugItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemSocketEntryPlugItemRandomizedDefinition_plugItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyItemSourceBlockDefinition_sourceHashes": .Table("DestinyRewardSourceDefinition"),
    "Destiny_Definitions_DestinyItemStatBlockDefinition_primaryBaseStatHash": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyItemStatBlockDefinition_statGroupHash": .Table("DestinyStatGroupDefinition"),
    "Destiny_Definitions_DestinyItemStatBlockDefinition_stats": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyItemTalentGridBlockDefinition_talentGridHash": .Table("DestinyTalentGridDefinition"),
    "Destiny_Definitions_DestinyItemVendorSourceReference_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyLocationDefinition_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_DestinyLocationReleaseDefinition_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_DestinyLocationReleaseDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Definitions_DestinyMaterialRequirement_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyNodeActivationRequirement_materialRequirementHashes": .Table("DestinyMaterialRequirementSetDefinition"),
    "Destiny_Definitions_DestinyNodeSocketReplaceResponse_plugItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyNodeSocketReplaceResponse_socketTypeHash": .Table("DestinySocketTypeDefinition"),
    "Destiny_Definitions_DestinyNodeStepDefinition_damageTypeHash": .Table("DestinyDamageTypeDefinition"),
    "Destiny_Definitions_DestinyNodeStepDefinition_perkHashes": .Table("DestinySandboxPerkDefinition"),
    "Destiny_Definitions_DestinyNodeStepDefinition_statHashes": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyObjectiveDefinition_locationHash": .Table("DestinyLocationDefinition"),
    "Destiny_Definitions_DestinyObjectiveDisplayProperties_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_DestinyObjectivePerkEntryDefinition_perkHash": .Table("DestinySandboxPerkDefinition"),
    "Destiny_Definitions_DestinyProgressionDefinition_factionHash": .Table("DestinyFactionDefinition"),
    "Destiny_Definitions_DestinyProgressionRewardDefinition_progressionMappingHash": .Table("DestinyProgressionMappingDefinition"),
    "Destiny_Definitions_DestinyRaceDefinition_genderedRaceNamesByGenderHash": .Table("DestinyGenderDefinition"),
    "Destiny_Definitions_DestinyStatDisplayDefinition_statHash": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyStatOverrideDefinition_statHash": .Table("DestinyStatDefinition"),
    "Destiny_Definitions_DestinyTalentExclusiveGroup_loreHash": .Table("DestinyLoreDefinition"),
    "Destiny_Definitions_DestinyTalentGridDefinition_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_Definitions_DestinyTalentNodeDefinition_loreHash": .Table("DestinyLoreDefinition"),
    "Destiny_Definitions_DestinyVendorAcceptedItemDefinition_acceptedInventoryBucketHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyVendorAcceptedItemDefinition_destinationInventoryBucketHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyVendorDefinition_displayItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyVendorDefinition_factionHash": .Table("DestinyFactionDefinition"),
    "Destiny_Definitions_DestinyVendorGroupReference_vendorGroupHash": .Table("DestinyVendorGroupDefinition"),
    "Destiny_Definitions_DestinyVendorInteractionDefinition_questlineItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyVendorInventoryFlyoutBucketDefinition_inventoryBucketHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Definitions_DestinyVendorItemDefinition_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyVendorItemQuantity_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyVendorItemSocketOverride_singleItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_DestinyVendorItemSocketOverride_socketTypeHash": .Table("DestinySocketTypeDefinition"),
    "Destiny_Definitions_Director_DestinyActivityGraphDisplayObjectiveDefinition_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_Director_DestinyActivityGraphNodeActivityDefinition_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_enabledMaterialRequirementHash": .Table("DestinyMaterialRequirementSetDefinition"),
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_insertionMaterialRequirementHash": .Table("DestinyMaterialRequirementSetDefinition"),
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_previewItemOverrideHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneActivityDefinition_conceptualActivityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneActivityDefinition_variants": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneActivityVariantDefinition_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneQuestDefinition_activities": .Table("DestinyActivityDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneQuestDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneQuestDefinition_questItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneQuestRewardItem_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneQuestRewardItem_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneRewardEntryDefinition_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_Milestones_DestinyMilestoneVendorDefinition_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationChildBlock_parentPresentationNodeHashes": .Table("DestinyPresentationNodeDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeChildEntry_presentationNodeHash": .Table("DestinyPresentationNodeDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeCollectibleChildEntry_collectibleHash": .Table("DestinyCollectibleDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_completionRecordHash": .Table("DestinyRecordDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_parentNodeHashes": .Table("DestinyPresentationNodeDefinition"),
    "Destiny_Definitions_Presentation_DestinyPresentationNodeRecordChildEntry_recordHash": .Table("DestinyRecordDefinition"),
    "Destiny_Definitions_Progression_DestinyProgressionLevelRequirementDefinition_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_Definitions_Records_DestinyRecordDefinition_loreHash": .Table("DestinyLoreDefinition"),
    "Destiny_Definitions_Records_DestinyRecordDefinition_objectiveHashes": .Table("DestinyObjectiveDefinition"),
    "Destiny_Definitions_Records_DestinyRecordTitleBlock_titlesByGenderHash": .Table("DestinyGenderDefinition"),
    "Destiny_Definitions_Sockets_DestinySocketTypeDefinition_socketCategoryHash": .Table("DestinySocketCategoryDefinition"),
    "Destiny_Definitions_Sources_DestinyItemSourceDefinition_sourceHashes": .Table("DestinyRewardSourceDefinition"),
    "Destiny_Definitions_Vendors_DestinyVendorLocationDefinition_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_DestinyActivity_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_DestinyItemQuantity_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_DestinyProgression_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_DestinyStat_statHash": .Table("DestinyStatDefinition"),
    "Destiny_DestinyUnlockStatus_unlockHash": .Table("DestinyUnlockDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_currentActivityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_currentActivityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_currentActivityModeHashes": .Table("DestinyActivityModeDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_currentActivityModeType": .Table("DestinyActivityModeDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_currentPlaylistActivityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterActivitiesComponent_lastCompletedStoryHash": .Table("DestinyActivityDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterComponent_classHash": .Table("DestinyClassDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterComponent_emblemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterComponent_genderHash": .Table("DestinyGenderDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterComponent_raceHash": .Table("DestinyRaceDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterComponent_titleRecordHash": .Table("DestinyRecordDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterProgressionComponent_checklists": .Table("DestinyChecklistDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterProgressionComponent_factions": .Table("DestinyFactionDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterProgressionComponent_milestones": .Table("DestinyMilestoneDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterProgressionComponent_progressions": .Table("DestinyProgressionDefinition"),
    "Destiny_Entities_Characters_DestinyCharacterProgressionComponent_uninstancedItemObjectives": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Items_DestinyItemComponent_bucketHash": .Table("DestinyInventoryBucketDefinition"),
    "Destiny_Entities_Items_DestinyItemComponent_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Items_DestinyItemComponent_overrideStyleItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Items_DestinyItemInstanceComponent_damageTypeHash": .Table("DestinyDamageTypeDefinition"),
    "Destiny_Entities_Items_DestinyItemInstanceComponent_unlockHashesRequiredToEquip": .Table("DestinyUnlockDefinition"),
    "Destiny_Entities_Items_DestinyItemSocketState_plugHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Items_DestinyItemSocketState_reusablePlugHashes": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Items_DestinyItemStatsComponent_stats": .Table("DestinyStatDefinition"),
    "Destiny_Entities_Items_DestinyItemTalentGridComponent_talentGridHash": .Table("DestinyTalentGridDefinition"),
    "Destiny_Entities_Vendors_DestinyVendorComponent_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Entities_Vendors_DestinyVendorSaleItemComponent_itemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Vendors_DestinyVendorSaleItemComponent_overrideStyleItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Entities_Vendors_DestinyVendorSaleItemComponent_requiredUnlocks": .Table("DestinyUnlockDefinition"),
    "Destiny_HistoricalStats_DestinyAggregateActivityStats_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_HistoricalStats_DestinyHistoricalStatsActivity_directorActivityHash": .Table("DestinyActivityDefinition"),
    "Destiny_HistoricalStats_DestinyHistoricalStatsActivity_referenceId": .Table("DestinyActivityDefinition"),
    "Destiny_HistoricalStats_DestinyHistoricalWeaponStats_referenceId": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Milestones_DestinyMilestoneActivityVariant_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyMilestoneActivityVariant_activityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Milestones_DestinyMilestoneActivity_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyMilestoneActivity_activityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Milestones_DestinyMilestoneActivity_modifierHashes": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Milestones_DestinyMilestoneChallengeActivity_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyMilestoneChallengeActivity_modifierHashes": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Milestones_DestinyMilestoneContentItemCategory_itemHashes": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Milestones_DestinyMilestoneQuest_questItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Milestones_DestinyMilestoneVendor_previewItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Milestones_DestinyMilestoneVendor_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Milestones_DestinyMilestone_milestoneHash": .Table("DestinyMilestoneDefinition"),
    "Destiny_Milestones_DestinyMilestone_vendorHashes": .Table("DestinyVendorDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneActivityVariant_activityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneActivity_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneActivity_activityModeHash": .Table("DestinyActivityModeDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneActivity_modifierHashes": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneChallengeActivity_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneChallengeActivity_modifierHashes": .Table("DestinyActivityModifierDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneChallenge_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneChallenge_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneQuest_questItemHash": .Table("DestinyMilestoneDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneVendor_previewItemHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Milestones_DestinyPublicMilestoneVendor_vendorHash": .Table("DestinyVendorDefinition"),
    "Destiny_Milestones_DestinyPublicMilestone_milestoneHash": .Table("DestinyMilestoneDefinition"),
    "Destiny_Perks_DestinyPerkReference_perkHash": .Table("DestinySandboxPerkDefinition"),
    "Destiny_Progression_DestinyFactionProgression_factionHash": .Table("DestinyFactionDefinition"),
    "Destiny_Progression_DestinyFactionProgression_progressionHash": .Table("DestinyProgressionDefinition"),
    "Destiny_Quests_DestinyObjectiveProgress_activityHash": .Table("DestinyActivityDefinition"),
    "Destiny_Quests_DestinyObjectiveProgress_destinationHash": .Table("DestinyDestinationDefinition"),
    "Destiny_Quests_DestinyObjectiveProgress_objectiveHash": .Table("DestinyObjectiveDefinition"),
    "Destiny_Quests_DestinyQuestStatus_questHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Quests_DestinyQuestStatus_stepHash": .Table("DestinyInventoryItemDefinition"),
    "Destiny_Reporting_Requests_DestinyReportOffensePgcrRequest_reasonCategoryHashes": .Table("DestinyReportReasonCategoryDefinition"),
    "Destiny_Sockets_DestinyItemPlug_plugItemHash": .Table("DestinyInventoryItemDefinition"),
]