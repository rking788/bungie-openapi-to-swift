//
//  EnumDefinitions.swift
//  ManifestReport
//
//  Copyright © 2019 Rob King. All rights reserved.
//

import Foundation

typealias EnumLookup = [String: ApiDefinition]
typealias EnumValues = (Int, String)

extension ApiDefinition {
    func values() -> EnumValues {
        switch self {
            case .Applications_ApplicationScopes(let val, let name),
            .Applications_ApplicationStatus(let val, let name),
            .Applications_DeveloperRole(let val, let name),
            .Applications_OAuthApplicationType(let val, let name),
            .BungieCredentialType(let val, let name),
            .BungieMembershipType(let val, let name),
            .Components_ComponentPrivacySetting(let val, let name),
            .Content_Models_ContentPropertyDataTypeEnum(let val, let name),
            .Destiny_ActivityGraphNodeHighlightType(let val, let name),
            .Destiny_Advanced_AwaResponseReason(let val, let name),
            .Destiny_Advanced_AwaType(let val, let name),
            .Destiny_Advanced_AwaUserSelection(let val, let name),
            .Destiny_BucketCategory(let val, let name),
            .Destiny_BucketScope(let val, let name),
            .Destiny_DamageType(let val, let name),
            .Destiny_Definitions_DestinyRewardSourceCategory(let val, let name),
            .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(let val, let name),
            .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(let val, let name),
            .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(let val, let name),
            .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(let val, let name),
            .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(let val, let name),
            .Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference(let val, let name),
            .Destiny_Definitions_Milestones_DestinyMilestoneType(let val, let name),
            .Destiny_DestinyActivityDifficultyTier(let val, let name),
            .Destiny_DestinyActivityModeCategory(let val, let name),
            .Destiny_DestinyActivityNavPointType(let val, let name),
            .Destiny_DestinyAmmunitionType(let val, let name),
            .Destiny_DestinyBreakerType(let val, let name),
            .Destiny_DestinyClass(let val, let name),
            .Destiny_DestinyCollectibleState(let val, let name),
            .Destiny_DestinyComponentType(let val, let name),
            .Destiny_DestinyEnergyType(let val, let name),
            .Destiny_DestinyGamePrivacySetting(let val, let name),
            .Destiny_DestinyGameVersions(let val, let name),
            .Destiny_DestinyGatingScope(let val, let name),
            .Destiny_DestinyGender(let val, let name),
            .Destiny_DestinyGraphNodeState(let val, let name),
            .Destiny_DestinyItemSortType(let val, let name),
            .Destiny_DestinyItemSubType(let val, let name),
            .Destiny_DestinyItemType(let val, let name),
            .Destiny_DestinyJoinClosedReasons(let val, let name),
            .Destiny_DestinyObjectiveGrantStyle(let val, let name),
            .Destiny_DestinyPartyMemberStates(let val, let name),
            .Destiny_DestinyPresentationDisplayStyle(let val, let name),
            .Destiny_DestinyPresentationNodeState(let val, let name),
            .Destiny_DestinyPresentationNodeType(let val, let name),
            .Destiny_DestinyPresentationScreenStyle(let val, let name),
            .Destiny_DestinyProgressionRewardItemAcquisitionBehavior(let val, let name),
            .Destiny_DestinyProgressionRewardItemState(let val, let name),
            .Destiny_DestinyProgressionScope(let val, let name),
            .Destiny_DestinyProgressionStepDisplayEffect(let val, let name),
            .Destiny_DestinyRace(let val, let name),
            .Destiny_DestinyRecordState(let val, let name),
            .Destiny_DestinyRecordToastStyle(let val, let name),
            .Destiny_DestinyRecordValueStyle(let val, let name),
            .Destiny_DestinyScope(let val, let name),
            .Destiny_DestinySocketCategoryStyle(let val, let name),
            .Destiny_DestinySocketVisibility(let val, let name),
            .Destiny_DestinyStatAggregationType(let val, let name),
            .Destiny_DestinyStatCategory(let val, let name),
            .Destiny_DestinyTalentNodeState(let val, let name),
            .Destiny_DestinyUnlockValueUIStyle(let val, let name),
            .Destiny_DestinyVendorFilter(let val, let name),
            .Destiny_DestinyVendorInteractionRewardSelection(let val, let name),
            .Destiny_DestinyVendorItemRefundPolicy(let val, let name),
            .Destiny_DestinyVendorItemState(let val, let name),
            .Destiny_DestinyVendorReplyType(let val, let name),
            .Destiny_EquipFailureReason(let val, let name),
            .Destiny_EquippingItemBlockAttributes(let val, let name),
            .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(let val, let name),
            .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(let val, let name),
            .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(let val, let name),
            .Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod(let val, let name),
            .Destiny_HistoricalStats_Definitions_PeriodType(let val, let name),
            .Destiny_HistoricalStats_Definitions_UnitType(let val, let name),
            .Destiny_ItemBindStatus(let val, let name),
            .Destiny_ItemLocation(let val, let name),
            .Destiny_ItemPerkVisibility(let val, let name),
            .Destiny_ItemState(let val, let name),
            .Destiny_PlugAvailabilityMode(let val, let name),
            .Destiny_PlugUiStyles(let val, let name),
            .Destiny_Requests_Actions_DestinySocketArrayType(let val, let name),
            .Destiny_SocketPlugSources(let val, let name),
            .Destiny_SocketTypeActionType(let val, let name),
            .Destiny_SpecialItemType(let val, let name),
            .Destiny_TierType(let val, let name),
            .Destiny_TransferStatuses(let val, let name),
            .Destiny_VendorDisplayCategorySortOrder(let val, let name),
            .Destiny_VendorInteractionType(let val, let name),
            .Destiny_VendorItemStatus(let val, let name),
            .Fireteam_FireteamDateRange(let val, let name),
            .Fireteam_FireteamPlatform(let val, let name),
            .Fireteam_FireteamPlatformInviteResult(let val, let name),
            .Fireteam_FireteamPublicSearchOption(let val, let name),
            .Fireteam_FireteamSlotSearch(let val, let name),
            .Forum_CommunityContentSortMode(let val, let name),
            .Forum_ForumMediaType(let val, let name),
            .Forum_ForumPostPopularity(let val, let name),
            .Forum_ForumPostSortEnum(let val, let name),
            .Forum_ForumRecruitmentIntensityLabel(let val, let name),
            .Forum_ForumRecruitmentToneLabel(let val, let name),
            .Forum_ForumTopicsCategoryFiltersEnum(let val, let name),
            .Forum_ForumTopicsQuickDateEnum(let val, let name),
            .Forum_ForumTopicsSortEnum(let val, let name),
            .Forums_ForumFlagsEnum(let val, let name),
            .Forums_ForumPostCategoryEnums(let val, let name),
            .GlobalAlertLevel(let val, let name),
            .GlobalAlertType(let val, let name),
            .GroupsV2_Capabilities(let val, let name),
            .GroupsV2_ChatSecuritySetting(let val, let name),
            .GroupsV2_GroupAllianceStatus(let val, let name),
            .GroupsV2_GroupApplicationResolveState(let val, let name),
            .GroupsV2_GroupDateRange(let val, let name),
            .GroupsV2_GroupHomepage(let val, let name),
            .GroupsV2_GroupMemberCountFilter(let val, let name),
            .GroupsV2_GroupPostPublicity(let val, let name),
            .GroupsV2_GroupPotentialMemberStatus(let val, let name),
            .GroupsV2_GroupSortBy(let val, let name),
            .GroupsV2_GroupType(let val, let name),
            .GroupsV2_GroupsForMemberFilter(let val, let name),
            .GroupsV2_HostGuidedGamesPermissionLevel(let val, let name),
            .GroupsV2_MembershipOption(let val, let name),
            .GroupsV2_RuntimeGroupMemberType(let val, let name),
            .Ignores_IgnoreLength(let val, let name),
            .Ignores_IgnoreStatus(let val, let name),
            .Trending_TrendingEntryType(let val, let name),
            .User_OptInFlags(let val, let name),
            :
            return (val, name)
        }
    }
}

let enumReferences: [String: EnumLookup] = [
    "Applications_ApplicationDeveloper_role": Applications_DeveloperRole_Lookup,
    "Applications_Application_applicationType": Applications_OAuthApplicationType_Lookup,
    "Applications_Application_status": Applications_ApplicationStatus_Lookup,
    "Components_ComponentResponse_privacy": Components_ComponentPrivacySetting_Lookup,
    "Content_Models_ContentTypeProperty_datatype": Content_Models_ContentPropertyDataTypeEnum_Lookup,
    "Destiny_Advanced_AwaAuthorizationResult_membershipType": BungieMembershipType_Lookup,
    "Destiny_Advanced_AwaAuthorizationResult_responseReason": Destiny_Advanced_AwaResponseReason_Lookup,
    "Destiny_Advanced_AwaAuthorizationResult_type": Destiny_Advanced_AwaType_Lookup,
    "Destiny_Advanced_AwaAuthorizationResult_userSelection": Destiny_Advanced_AwaUserSelection_Lookup,
    "Destiny_Advanced_AwaPermissionRequested_membershipType": BungieMembershipType_Lookup,
    "Destiny_Advanced_AwaPermissionRequested_type": Destiny_Advanced_AwaType_Lookup,
    "Destiny_Advanced_AwaUserResponse_selection": Destiny_Advanced_AwaUserSelection_Lookup,
    "Destiny_Components_Collectibles_DestinyCollectibleComponent_state": Destiny_DestinyCollectibleState_Lookup,
    "Destiny_Components_Presentation_DestinyPresentationNodeComponent_state": Destiny_DestinyPresentationNodeState_Lookup,
    "Destiny_Components_Profiles_DestinyProfileTransitoryJoinability_closedReasons": Destiny_DestinyJoinClosedReasons_Lookup,
    "Destiny_Components_Profiles_DestinyProfileTransitoryJoinability_privacySetting": Destiny_DestinyGamePrivacySetting_Lookup,
    "Destiny_Components_Profiles_DestinyProfileTransitoryPartyMember_status": Destiny_DestinyPartyMemberStates_Lookup,
    "Destiny_Components_Records_DestinyRecordComponent_state": Destiny_DestinyRecordState_Lookup,
    "Destiny_Definitions_BreakerTypes_DestinyBreakerTypeDefinition_enumValue": Destiny_DestinyBreakerType_Lookup,
    "Destiny_Definitions_Checklists_DestinyChecklistDefinition_scope": Destiny_DestinyScope_Lookup,
    "Destiny_Definitions_Checklists_DestinyChecklistEntryDefinition_scope": Destiny_DestinyScope_Lookup,
    "Destiny_Definitions_Collectibles_DestinyCollectibleDefinition_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Collectibles_DestinyCollectibleDefinition_scope": Destiny_DestinyScope_Lookup,
    "Destiny_Definitions_DestinyActivityModeDefinition_activityModeCategory": Destiny_DestinyActivityModeCategory_Lookup,
    "Destiny_Definitions_DestinyActivityModeDefinition_modeType": Destiny_HistoricalStats_Definitions_DestinyActivityModeType_Lookup,
    "Destiny_Definitions_DestinyClassDefinition_classType": Destiny_DestinyClass_Lookup,
    "Destiny_Definitions_DestinyDamageTypeDefinition_enumValue": Destiny_DamageType_Lookup,
    "Destiny_Definitions_DestinyDisplayCategoryDefinition_sortOrder": Destiny_VendorDisplayCategorySortOrder_Lookup,
    "Destiny_Definitions_DestinyEquippingBlockDefinition_ammoType": Destiny_DestinyAmmunitionType_Lookup,
    "Destiny_Definitions_DestinyEquippingBlockDefinition_attributes": Destiny_EquippingItemBlockAttributes_Lookup,
    "Destiny_Definitions_DestinyGenderDefinition_genderType": Destiny_DestinyGender_Lookup,
    "Destiny_Definitions_DestinyInventoryBucketDefinition_category": Destiny_BucketCategory_Lookup,
    "Destiny_Definitions_DestinyInventoryBucketDefinition_location": Destiny_ItemLocation_Lookup,
    "Destiny_Definitions_DestinyInventoryBucketDefinition_scope": Destiny_BucketScope_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_breakerType": Destiny_DestinyBreakerType_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_classType": Destiny_DestinyClass_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_defaultDamageType": Destiny_DamageType_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_itemSubType": Destiny_DestinyItemSubType_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_itemType": Destiny_DestinyItemType_Lookup,
    "Destiny_Definitions_DestinyInventoryItemDefinition_specialItemType": Destiny_SpecialItemType_Lookup,
    "Destiny_Definitions_DestinyItemCategoryDefinition_grantDestinyBreakerType": Destiny_DestinyBreakerType_Lookup,
    "Destiny_Definitions_DestinyItemCategoryDefinition_grantDestinyClass": Destiny_DestinyClass_Lookup,
    "Destiny_Definitions_DestinyItemCategoryDefinition_grantDestinyItemType": Destiny_DestinyItemType_Lookup,
    "Destiny_Definitions_DestinyItemCategoryDefinition_grantDestinySubType": Destiny_DestinyItemSubType_Lookup,
    "Destiny_Definitions_DestinyItemInventoryBlockDefinition_tierType": Destiny_TierType_Lookup,
    "Destiny_Definitions_DestinyItemPerkEntryDefinition_perkVisibility": Destiny_ItemPerkVisibility_Lookup,
    "Destiny_Definitions_DestinyItemSocketEntryDefinition_plugSources": Destiny_SocketPlugSources_Lookup,
    "Destiny_Definitions_DestinyItemSourceBlockDefinition_exclusive": BungieMembershipType_Lookup,
    "Destiny_Definitions_DestinyItemTalentGridBlockDefinition_hudDamageType": Destiny_DamageType_Lookup,
    "Destiny_Definitions_DestinyLocationReleaseDefinition_navPointType": Destiny_DestinyActivityNavPointType_Lookup,
    "Destiny_Definitions_DestinyNodeStepDefinition_damageType": Destiny_DamageType_Lookup,
    "Destiny_Definitions_DestinyObjectiveDefinition_completedValueStyle": Destiny_DestinyUnlockValueUIStyle_Lookup,
    "Destiny_Definitions_DestinyObjectiveDefinition_inProgressValueStyle": Destiny_DestinyUnlockValueUIStyle_Lookup,
    "Destiny_Definitions_DestinyObjectiveDefinition_scope": Destiny_DestinyGatingScope_Lookup,
    "Destiny_Definitions_DestinyObjectiveDefinition_valueStyle": Destiny_DestinyUnlockValueUIStyle_Lookup,
    "Destiny_Definitions_DestinyObjectivePerkEntryDefinition_style": Destiny_DestinyObjectiveGrantStyle_Lookup,
    "Destiny_Definitions_DestinyObjectiveStatEntryDefinition_style": Destiny_DestinyObjectiveGrantStyle_Lookup,
    "Destiny_Definitions_DestinyProgressionDefinition_scope": Destiny_DestinyProgressionScope_Lookup,
    "Destiny_Definitions_DestinyProgressionRewardItemQuantity_acquisitionBehavior": Destiny_DestinyProgressionRewardItemAcquisitionBehavior_Lookup,
    "Destiny_Definitions_DestinyProgressionStepDefinition_displayEffectType": Destiny_DestinyProgressionStepDisplayEffect_Lookup,
    "Destiny_Definitions_DestinyRaceDefinition_raceType": Destiny_DestinyRace_Lookup,
    "Destiny_Definitions_DestinyRewardSourceDefinition_category": Destiny_Definitions_DestinyRewardSourceCategory_Lookup,
    "Destiny_Definitions_DestinySandboxPerkDefinition_damageType": Destiny_DamageType_Lookup,
    "Destiny_Definitions_DestinyStatDefinition_aggregationType": Destiny_DestinyStatAggregationType_Lookup,
    "Destiny_Definitions_DestinyStatDefinition_statCategory": Destiny_DestinyStatCategory_Lookup,
    "Destiny_Definitions_DestinyTalentNodeStepGroups_damageTypes": Destiny_Definitions_DestinyTalentNodeStepDamageTypes_Lookup,
    "Destiny_Definitions_DestinyTalentNodeStepGroups_guardianAttributes": Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes_Lookup,
    "Destiny_Definitions_DestinyTalentNodeStepGroups_impactEffects": Destiny_Definitions_DestinyTalentNodeStepImpactEffects_Lookup,
    "Destiny_Definitions_DestinyTalentNodeStepGroups_lightAbilities": Destiny_Definitions_DestinyTalentNodeStepLightAbilities_Lookup,
    "Destiny_Definitions_DestinyTalentNodeStepGroups_weaponPerformance": Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances_Lookup,
    "Destiny_Definitions_DestinyUnlockExpressionDefinition_scope": Destiny_DestinyGatingScope_Lookup,
    "Destiny_Definitions_DestinyVendorInteractionDefinition_interactionType": Destiny_VendorInteractionType_Lookup,
    "Destiny_Definitions_DestinyVendorInteractionReplyDefinition_itemRewardsSelection": Destiny_DestinyVendorInteractionRewardSelection_Lookup,
    "Destiny_Definitions_DestinyVendorInteractionReplyDefinition_replyType": Destiny_DestinyVendorReplyType_Lookup,
    "Destiny_Definitions_DestinyVendorInventoryFlyoutBucketDefinition_sortItemsBy": Destiny_DestinyItemSortType_Lookup,
    "Destiny_Definitions_DestinyVendorItemDefinition_exclusivity": BungieMembershipType_Lookup,
    "Destiny_Definitions_DestinyVendorItemDefinition_purchasableScope": Destiny_DestinyGatingScope_Lookup,
    "Destiny_Definitions_DestinyVendorItemDefinition_refundPolicy": Destiny_DestinyVendorItemRefundPolicy_Lookup,
    "Destiny_Definitions_DestinyVendorItemDefinition_visibilityScope": Destiny_DestinyGatingScope_Lookup,
    "Destiny_Definitions_Director_DestinyActivityGraphNodeFeaturingStateDefinition_highlightType": Destiny_ActivityGraphNodeHighlightType_Lookup,
    "Destiny_Definitions_Director_DestinyActivityGraphNodeStateEntry_state": Destiny_DestinyGraphNodeState_Lookup,
    "Destiny_Definitions_EnergyTypes_DestinyEnergyTypeDefinition_enumValue": Destiny_DestinyEnergyType_Lookup,
    "Destiny_Definitions_Items_DestinyEnergyCapacityEntry_energyType": Destiny_DestinyEnergyType_Lookup,
    "Destiny_Definitions_Items_DestinyEnergyCostEntry_energyType": Destiny_DestinyEnergyType_Lookup,
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_alternatePlugStyle": Destiny_PlugUiStyles_Lookup,
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_plugAvailability": Destiny_PlugAvailabilityMode_Lookup,
    "Destiny_Definitions_Items_DestinyItemPlugDefinition_plugStyle": Destiny_PlugUiStyles_Lookup,
    "Destiny_Definitions_Metrics_DestinyMetricDefinition_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Milestones_DestinyMilestoneDefinition_displayPreference": Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference_Lookup,
    "Destiny_Definitions_Milestones_DestinyMilestoneDefinition_milestoneType": Destiny_Definitions_Milestones_DestinyMilestoneType_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationChildBlock_displayStyle": Destiny_DestinyPresentationDisplayStyle_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationChildBlock_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeBaseDefinition_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_displayStyle": Destiny_DestinyPresentationDisplayStyle_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_nodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_scope": Destiny_DestinyScope_Lookup,
    "Destiny_Definitions_Presentation_DestinyPresentationNodeDefinition_screenStyle": Destiny_DestinyPresentationScreenStyle_Lookup,
    "Destiny_Definitions_Records_DestinyRecordCompletionBlock_toastStyle": Destiny_DestinyRecordToastStyle_Lookup,
    "Destiny_Definitions_Records_DestinyRecordDefinition_presentationNodeType": Destiny_DestinyPresentationNodeType_Lookup,
    "Destiny_Definitions_Records_DestinyRecordDefinition_recordValueStyle": Destiny_DestinyRecordValueStyle_Lookup,
    "Destiny_Definitions_Records_DestinyRecordDefinition_scope": Destiny_DestinyScope_Lookup,
    "Destiny_Definitions_Sockets_DestinyInsertPlugActionDefinition_actionType": Destiny_SocketTypeActionType_Lookup,
    "Destiny_Definitions_Sockets_DestinySocketCategoryDefinition_categoryStyle": Destiny_DestinySocketCategoryStyle_Lookup,
    "Destiny_Definitions_Sockets_DestinySocketTypeDefinition_visibility": Destiny_DestinySocketVisibility_Lookup,
    "Destiny_DestinyActivity_difficultyTier": Destiny_DestinyActivityDifficultyTier_Lookup,
    "Destiny_DestinyTalentNode_state": Destiny_DestinyTalentNodeState_Lookup,
    "Destiny_Entities_Characters_DestinyCharacterComponent_classType": Destiny_DestinyClass_Lookup,
    "Destiny_Entities_Characters_DestinyCharacterComponent_genderType": Destiny_DestinyGender_Lookup,
    "Destiny_Entities_Characters_DestinyCharacterComponent_membershipType": BungieMembershipType_Lookup,
    "Destiny_Entities_Characters_DestinyCharacterComponent_raceType": Destiny_DestinyRace_Lookup,
    "Destiny_Entities_Items_DestinyItemComponent_bindStatus": Destiny_ItemBindStatus_Lookup,
    "Destiny_Entities_Items_DestinyItemComponent_location": Destiny_ItemLocation_Lookup,
    "Destiny_Entities_Items_DestinyItemComponent_state": Destiny_ItemState_Lookup,
    "Destiny_Entities_Items_DestinyItemComponent_transferStatus": Destiny_TransferStatuses_Lookup,
    "Destiny_Entities_Items_DestinyItemInstanceComponent_cannotEquipReason": Destiny_EquipFailureReason_Lookup,
    "Destiny_Entities_Items_DestinyItemInstanceComponent_damageType": Destiny_DamageType_Lookup,
    "Destiny_Entities_Items_DestinyItemInstanceEnergy_energyType": Destiny_DestinyEnergyType_Lookup,
    "Destiny_Entities_Profiles_DestinyProfileComponent_versionsOwned": Destiny_DestinyGameVersions_Lookup,
    "Destiny_Entities_Vendors_DestinyVendorSaleItemComponent_augments": Destiny_DestinyVendorItemState_Lookup,
    "Destiny_Entities_Vendors_DestinyVendorSaleItemComponent_saleStatus": Destiny_VendorItemStatus_Lookup,
    "Destiny_HistoricalStats_Definitions_DestinyHistoricalStatsDefinition_category": Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType_Lookup,
    "Destiny_HistoricalStats_Definitions_DestinyHistoricalStatsDefinition_group": Destiny_HistoricalStats_Definitions_DestinyStatsGroupType_Lookup,
    "Destiny_HistoricalStats_Definitions_DestinyHistoricalStatsDefinition_unitType": Destiny_HistoricalStats_Definitions_UnitType_Lookup,
    "Destiny_HistoricalStats_DestinyClanAggregateStat_mode": Destiny_HistoricalStats_Definitions_DestinyActivityModeType_Lookup,
    "Destiny_HistoricalStats_DestinyHistoricalStatsActivity_membershipType": BungieMembershipType_Lookup,
    "Destiny_HistoricalStats_DestinyHistoricalStatsActivity_mode": Destiny_HistoricalStats_Definitions_DestinyActivityModeType_Lookup,
    "Destiny_Requests_Actions_DestinyActionRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyCharacterActionRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyInsertPlugsActionRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyInsertPlugsRequestEntry_socketArrayType": Destiny_Requests_Actions_DestinySocketArrayType_Lookup,
    "Destiny_Requests_Actions_DestinyItemActionRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyItemSetActionRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyItemStateRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_Actions_DestinyPostmasterTransferRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Requests_DestinyItemTransferRequest_membershipType": BungieMembershipType_Lookup,
    "Destiny_Responses_DestinyProfileUserInfoCard_crossSaveOverride": BungieMembershipType_Lookup,
    "Destiny_Responses_DestinyProfileUserInfoCard_membershipType": BungieMembershipType_Lookup,
    "Destiny_Vendors_DestinyVendorReceipt_refundPolicy": Destiny_DestinyVendorItemRefundPolicy_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemPerksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemStatsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCharacterComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyInventoryComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemPerksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemStatsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyKiosksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndDestinyVendorComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "Fireteam_FireteamMember_lastPlatformInviteAttemptResult": Fireteam_FireteamPlatformInviteResult_Lookup,
    "Fireteam_FireteamSummary_platform": Fireteam_FireteamPlatform_Lookup,
    "Fireteam_FireteamUserInfoCard_FireteamMembershipType": BungieMembershipType_Lookup,
    "Fireteam_FireteamUserInfoCard_crossSaveOverride": BungieMembershipType_Lookup,
    "Fireteam_FireteamUserInfoCard_membershipType": BungieMembershipType_Lookup,
    "Forum_ForumRecruitmentDetail_intensity": Forum_ForumRecruitmentIntensityLabel_Lookup,
    "Forum_ForumRecruitmentDetail_tone": Forum_ForumRecruitmentToneLabel_Lookup,
    "Forum_PostResponse_popularity": Forum_ForumPostPopularity_Lookup,
    "Forum_PostResponse_urlMediaType": Forum_ForumMediaType_Lookup,
    "GlobalAlert_AlertLevel": GlobalAlertLevel_Lookup,
    "GlobalAlert_AlertType": GlobalAlertType_Lookup,
    "GroupsV2_GroupApplicationResponse_resolution": GroupsV2_GroupApplicationResolveState_Lookup,
    "GroupsV2_GroupBanRequest_length": Ignores_IgnoreLength_Lookup,
    "GroupsV2_GroupFeatures_capabilities": GroupsV2_Capabilities_Lookup,
    "GroupsV2_GroupFeatures_hostGuidedGamePermissionOverride": GroupsV2_HostGuidedGamesPermissionLevel_Lookup,
    "GroupsV2_GroupFeatures_joinLevel": GroupsV2_RuntimeGroupMemberType_Lookup,
    "GroupsV2_GroupMemberApplication_resolveState": GroupsV2_GroupApplicationResolveState_Lookup,
    "GroupsV2_GroupMember_memberType": GroupsV2_RuntimeGroupMemberType_Lookup,
    "GroupsV2_GroupNameSearchRequest_groupType": GroupsV2_GroupType_Lookup,
    "GroupsV2_GroupOptionalConversationAddRequest_chatSecurity": GroupsV2_ChatSecuritySetting_Lookup,
    "GroupsV2_GroupOptionalConversation_chatSecurity": GroupsV2_ChatSecuritySetting_Lookup,
    "GroupsV2_GroupPotentialMember_potentialStatus": GroupsV2_GroupPotentialMemberStatus_Lookup,
    "GroupsV2_GroupQuery_creationDate": GroupsV2_GroupDateRange_Lookup,
    "GroupsV2_GroupQuery_groupType": GroupsV2_GroupType_Lookup,
    "GroupsV2_GroupQuery_sortBy": GroupsV2_GroupSortBy_Lookup,
    "GroupsV2_GroupResponse_allianceStatus": GroupsV2_GroupAllianceStatus_Lookup,
    "GroupsV2_GroupUserInfoCard_LastSeenDisplayNameType": BungieMembershipType_Lookup,
    "GroupsV2_GroupUserInfoCard_crossSaveOverride": BungieMembershipType_Lookup,
    "GroupsV2_GroupUserInfoCard_membershipType": BungieMembershipType_Lookup,
    "GroupsV2_GroupV2Card_capabilities": GroupsV2_Capabilities_Lookup,
    "GroupsV2_GroupV2Card_groupType": GroupsV2_GroupType_Lookup,
    "GroupsV2_GroupV2Card_membershipOption": GroupsV2_MembershipOption_Lookup,
    "GroupsV2_GroupV2_chatSecurity": GroupsV2_ChatSecuritySetting_Lookup,
    "GroupsV2_GroupV2_defaultPublicity": GroupsV2_GroupPostPublicity_Lookup,
    "GroupsV2_GroupV2_groupType": GroupsV2_GroupType_Lookup,
    "GroupsV2_GroupV2_homepage": GroupsV2_GroupHomepage_Lookup,
    "GroupsV2_GroupV2_membershipOption": GroupsV2_MembershipOption_Lookup,
    "Ignores_IgnoreResponse_ignoreFlags": Ignores_IgnoreStatus_Lookup,
    "SingleComponentResponseOfDestinyCharacterActivitiesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCharacterComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCharacterProgressionComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCharacterRecordsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCharacterRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCollectiblesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyCurrenciesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyInventoryComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemInstanceComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemPerksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemPlugObjectivesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemRenderComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemReusablePlugsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemSocketsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemStatsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyItemTalentGridComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyKiosksComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyMetricsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyPlatformSilverComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyPlugSetsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyPresentationNodesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyProfileCollectiblesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyProfileComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyProfileProgressionComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyProfileRecordsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyProfileTransitoryComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyVendorCategoriesComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyVendorComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyVendorGroupComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "SingleComponentResponseOfDestinyVendorReceiptsComponent_privacy": Components_ComponentPrivacySetting_Lookup,
    "Trending_TrendingDetail_entityType": Trending_TrendingEntryType_Lookup,
    "Trending_TrendingEntry_entityType": Trending_TrendingEntryType_Lookup,
    "User_CrossSaveUserMembership_crossSaveOverride": BungieMembershipType_Lookup,
    "User_CrossSaveUserMembership_membershipType": BungieMembershipType_Lookup,
    "User_EmailOptInDefinition_value": User_OptInFlags_Lookup,
    "User_EmailViewDefinitionSetting_optInAggregateValue": User_OptInFlags_Lookup,
    "User_HardLinkedUserMembership_CrossSaveOverriddenType": BungieMembershipType_Lookup,
    "User_HardLinkedUserMembership_membershipType": BungieMembershipType_Lookup,
    "User_UserInfoCard_crossSaveOverride": BungieMembershipType_Lookup,
    "User_UserInfoCard_membershipType": BungieMembershipType_Lookup,
    "User_UserMembership_membershipType": BungieMembershipType_Lookup,
]

enum ApiDefinition {
    // (Raw Value, User Friendly Identifier)
    case Applications_ApplicationScopes(Int, String)
    case Applications_ApplicationStatus(Int, String)
    case Applications_DeveloperRole(Int, String)
    case Applications_OAuthApplicationType(Int, String)
    case BungieCredentialType(Int, String)
    case BungieMembershipType(Int, String)
    case Components_ComponentPrivacySetting(Int, String)
    case Content_Models_ContentPropertyDataTypeEnum(Int, String)
    case Destiny_ActivityGraphNodeHighlightType(Int, String)
    case Destiny_Advanced_AwaResponseReason(Int, String)
    case Destiny_Advanced_AwaType(Int, String)
    case Destiny_Advanced_AwaUserSelection(Int, String)
    case Destiny_BucketCategory(Int, String)
    case Destiny_BucketScope(Int, String)
    case Destiny_DamageType(Int, String)
    case Destiny_Definitions_DestinyRewardSourceCategory(Int, String)
    case Destiny_Definitions_DestinyTalentNodeStepDamageTypes(Int, String)
    case Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(Int, String)
    case Destiny_Definitions_DestinyTalentNodeStepImpactEffects(Int, String)
    case Destiny_Definitions_DestinyTalentNodeStepLightAbilities(Int, String)
    case Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(Int, String)
    case Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference(Int, String)
    case Destiny_Definitions_Milestones_DestinyMilestoneType(Int, String)
    case Destiny_DestinyActivityDifficultyTier(Int, String)
    case Destiny_DestinyActivityModeCategory(Int, String)
    case Destiny_DestinyActivityNavPointType(Int, String)
    case Destiny_DestinyAmmunitionType(Int, String)
    case Destiny_DestinyBreakerType(Int, String)
    case Destiny_DestinyClass(Int, String)
    case Destiny_DestinyCollectibleState(Int, String)
    case Destiny_DestinyComponentType(Int, String)
    case Destiny_DestinyEnergyType(Int, String)
    case Destiny_DestinyGamePrivacySetting(Int, String)
    case Destiny_DestinyGameVersions(Int, String)
    case Destiny_DestinyGatingScope(Int, String)
    case Destiny_DestinyGender(Int, String)
    case Destiny_DestinyGraphNodeState(Int, String)
    case Destiny_DestinyItemSortType(Int, String)
    case Destiny_DestinyItemSubType(Int, String)
    case Destiny_DestinyItemType(Int, String)
    case Destiny_DestinyJoinClosedReasons(Int, String)
    case Destiny_DestinyObjectiveGrantStyle(Int, String)
    case Destiny_DestinyPartyMemberStates(Int, String)
    case Destiny_DestinyPresentationDisplayStyle(Int, String)
    case Destiny_DestinyPresentationNodeState(Int, String)
    case Destiny_DestinyPresentationNodeType(Int, String)
    case Destiny_DestinyPresentationScreenStyle(Int, String)
    case Destiny_DestinyProgressionRewardItemAcquisitionBehavior(Int, String)
    case Destiny_DestinyProgressionRewardItemState(Int, String)
    case Destiny_DestinyProgressionScope(Int, String)
    case Destiny_DestinyProgressionStepDisplayEffect(Int, String)
    case Destiny_DestinyRace(Int, String)
    case Destiny_DestinyRecordState(Int, String)
    case Destiny_DestinyRecordToastStyle(Int, String)
    case Destiny_DestinyRecordValueStyle(Int, String)
    case Destiny_DestinyScope(Int, String)
    case Destiny_DestinySocketCategoryStyle(Int, String)
    case Destiny_DestinySocketVisibility(Int, String)
    case Destiny_DestinyStatAggregationType(Int, String)
    case Destiny_DestinyStatCategory(Int, String)
    case Destiny_DestinyTalentNodeState(Int, String)
    case Destiny_DestinyUnlockValueUIStyle(Int, String)
    case Destiny_DestinyVendorFilter(Int, String)
    case Destiny_DestinyVendorInteractionRewardSelection(Int, String)
    case Destiny_DestinyVendorItemRefundPolicy(Int, String)
    case Destiny_DestinyVendorItemState(Int, String)
    case Destiny_DestinyVendorReplyType(Int, String)
    case Destiny_EquipFailureReason(Int, String)
    case Destiny_EquippingItemBlockAttributes(Int, String)
    case Destiny_HistoricalStats_Definitions_DestinyActivityModeType(Int, String)
    case Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(Int, String)
    case Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(Int, String)
    case Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod(Int, String)
    case Destiny_HistoricalStats_Definitions_PeriodType(Int, String)
    case Destiny_HistoricalStats_Definitions_UnitType(Int, String)
    case Destiny_ItemBindStatus(Int, String)
    case Destiny_ItemLocation(Int, String)
    case Destiny_ItemPerkVisibility(Int, String)
    case Destiny_ItemState(Int, String)
    case Destiny_PlugAvailabilityMode(Int, String)
    case Destiny_PlugUiStyles(Int, String)
    case Destiny_Requests_Actions_DestinySocketArrayType(Int, String)
    case Destiny_SocketPlugSources(Int, String)
    case Destiny_SocketTypeActionType(Int, String)
    case Destiny_SpecialItemType(Int, String)
    case Destiny_TierType(Int, String)
    case Destiny_TransferStatuses(Int, String)
    case Destiny_VendorDisplayCategorySortOrder(Int, String)
    case Destiny_VendorInteractionType(Int, String)
    case Destiny_VendorItemStatus(Int, String)
    case Fireteam_FireteamDateRange(Int, String)
    case Fireteam_FireteamPlatform(Int, String)
    case Fireteam_FireteamPlatformInviteResult(Int, String)
    case Fireteam_FireteamPublicSearchOption(Int, String)
    case Fireteam_FireteamSlotSearch(Int, String)
    case Forum_CommunityContentSortMode(Int, String)
    case Forum_ForumMediaType(Int, String)
    case Forum_ForumPostPopularity(Int, String)
    case Forum_ForumPostSortEnum(Int, String)
    case Forum_ForumRecruitmentIntensityLabel(Int, String)
    case Forum_ForumRecruitmentToneLabel(Int, String)
    case Forum_ForumTopicsCategoryFiltersEnum(Int, String)
    case Forum_ForumTopicsQuickDateEnum(Int, String)
    case Forum_ForumTopicsSortEnum(Int, String)
    case Forums_ForumFlagsEnum(Int, String)
    case Forums_ForumPostCategoryEnums(Int, String)
    case GlobalAlertLevel(Int, String)
    case GlobalAlertType(Int, String)
    case GroupsV2_Capabilities(Int, String)
    case GroupsV2_ChatSecuritySetting(Int, String)
    case GroupsV2_GroupAllianceStatus(Int, String)
    case GroupsV2_GroupApplicationResolveState(Int, String)
    case GroupsV2_GroupDateRange(Int, String)
    case GroupsV2_GroupHomepage(Int, String)
    case GroupsV2_GroupMemberCountFilter(Int, String)
    case GroupsV2_GroupPostPublicity(Int, String)
    case GroupsV2_GroupPotentialMemberStatus(Int, String)
    case GroupsV2_GroupSortBy(Int, String)
    case GroupsV2_GroupType(Int, String)
    case GroupsV2_GroupsForMemberFilter(Int, String)
    case GroupsV2_HostGuidedGamesPermissionLevel(Int, String)
    case GroupsV2_MembershipOption(Int, String)
    case GroupsV2_RuntimeGroupMemberType(Int, String)
    case Ignores_IgnoreLength(Int, String)
    case Ignores_IgnoreStatus(Int, String)
    case Trending_TrendingEntryType(Int, String)
    case User_OptInFlags(Int, String)

}

let Applications_ApplicationScopes_Lookup: EnumLookup = [
   "1": .Applications_ApplicationScopes(1, "ReadBasicUserProfile"),
   "2": .Applications_ApplicationScopes(2, "ReadGroups"),
   "4": .Applications_ApplicationScopes(4, "WriteGroups"),
   "8": .Applications_ApplicationScopes(8, "AdminGroups"),
   "16": .Applications_ApplicationScopes(16, "BnetWrite"),
   "32": .Applications_ApplicationScopes(32, "MoveEquipDestinyItems"),
   "64": .Applications_ApplicationScopes(64, "ReadDestinyInventoryAndVault"),
   "128": .Applications_ApplicationScopes(128, "ReadUserData"),
   "256": .Applications_ApplicationScopes(256, "EditUserData"),
   "512": .Applications_ApplicationScopes(512, "ReadDestinyVendorsAndAdvisors"),
   "1024": .Applications_ApplicationScopes(1024, "ReadAndApplyTokens"),
   "2048": .Applications_ApplicationScopes(2048, "AdvancedWriteActions"),
   "4096": .Applications_ApplicationScopes(4096, "PartnerOfferGrant"),
]

let Applications_ApplicationStatus_Lookup: EnumLookup = [
   "0": .Applications_ApplicationStatus(0, "None"),
   "1": .Applications_ApplicationStatus(1, "Private"),
   "2": .Applications_ApplicationStatus(2, "Public"),
   "3": .Applications_ApplicationStatus(3, "Disabled"),
   "4": .Applications_ApplicationStatus(4, "Blocked"),
]

let Applications_DeveloperRole_Lookup: EnumLookup = [
   "0": .Applications_DeveloperRole(0, "None"),
   "1": .Applications_DeveloperRole(1, "Owner"),
   "2": .Applications_DeveloperRole(2, "TeamMember"),
]

let Applications_OAuthApplicationType_Lookup: EnumLookup = [
   "0": .Applications_OAuthApplicationType(0, "None"),
   "1": .Applications_OAuthApplicationType(1, "Confidential"),
   "2": .Applications_OAuthApplicationType(2, "Public"),
]

let BungieCredentialType_Lookup: EnumLookup = [
   "0": .BungieCredentialType(0, "None"),
   "1": .BungieCredentialType(1, "Xuid"),
   "2": .BungieCredentialType(2, "Psnid"),
   "3": .BungieCredentialType(3, "Wlid"),
   "4": .BungieCredentialType(4, "Fake"),
   "5": .BungieCredentialType(5, "Facebook"),
   "8": .BungieCredentialType(8, "Google"),
   "9": .BungieCredentialType(9, "Windows"),
   "10": .BungieCredentialType(10, "DemonId"),
   "12": .BungieCredentialType(12, "SteamId"),
   "14": .BungieCredentialType(14, "BattleNetId"),
   "16": .BungieCredentialType(16, "StadiaId"),
   "18": .BungieCredentialType(18, "TwitchId"),
]

let BungieMembershipType_Lookup: EnumLookup = [
   "0": .BungieMembershipType(0, "None"),
   "1": .BungieMembershipType(1, "TigerXbox"),
   "2": .BungieMembershipType(2, "TigerPsn"),
   "3": .BungieMembershipType(3, "TigerSteam"),
   "4": .BungieMembershipType(4, "TigerBlizzard"),
   "5": .BungieMembershipType(5, "TigerStadia"),
   "10": .BungieMembershipType(10, "TigerDemon"),
   "254": .BungieMembershipType(254, "BungieNext"),
   "-1": .BungieMembershipType(-1, "All"),
]

let Components_ComponentPrivacySetting_Lookup: EnumLookup = [
   "0": .Components_ComponentPrivacySetting(0, "None"),
   "1": .Components_ComponentPrivacySetting(1, "Public"),
   "2": .Components_ComponentPrivacySetting(2, "Private"),
]

let Content_Models_ContentPropertyDataTypeEnum_Lookup: EnumLookup = [
   "0": .Content_Models_ContentPropertyDataTypeEnum(0, "None"),
   "1": .Content_Models_ContentPropertyDataTypeEnum(1, "Plaintext"),
   "2": .Content_Models_ContentPropertyDataTypeEnum(2, "Html"),
   "3": .Content_Models_ContentPropertyDataTypeEnum(3, "Dropdown"),
   "4": .Content_Models_ContentPropertyDataTypeEnum(4, "List"),
   "5": .Content_Models_ContentPropertyDataTypeEnum(5, "Json"),
   "6": .Content_Models_ContentPropertyDataTypeEnum(6, "Content"),
   "7": .Content_Models_ContentPropertyDataTypeEnum(7, "Representation"),
   "8": .Content_Models_ContentPropertyDataTypeEnum(8, "Set"),
   "9": .Content_Models_ContentPropertyDataTypeEnum(9, "File"),
   "10": .Content_Models_ContentPropertyDataTypeEnum(10, "FolderSet"),
   "11": .Content_Models_ContentPropertyDataTypeEnum(11, "Date"),
   "12": .Content_Models_ContentPropertyDataTypeEnum(12, "MultilinePlaintext"),
   "13": .Content_Models_ContentPropertyDataTypeEnum(13, "DestinyContent"),
   "14": .Content_Models_ContentPropertyDataTypeEnum(14, "Color"),
]

let Destiny_ActivityGraphNodeHighlightType_Lookup: EnumLookup = [
   "0": .Destiny_ActivityGraphNodeHighlightType(0, "None"),
   "1": .Destiny_ActivityGraphNodeHighlightType(1, "Normal"),
   "2": .Destiny_ActivityGraphNodeHighlightType(2, "Hyper"),
   "3": .Destiny_ActivityGraphNodeHighlightType(3, "Comet"),
   "4": .Destiny_ActivityGraphNodeHighlightType(4, "RiseOfIron"),
]

let Destiny_Advanced_AwaResponseReason_Lookup: EnumLookup = [
   "0": .Destiny_Advanced_AwaResponseReason(0, "None"),
   "1": .Destiny_Advanced_AwaResponseReason(1, "Answered"),
   "2": .Destiny_Advanced_AwaResponseReason(2, "TimedOut"),
   "3": .Destiny_Advanced_AwaResponseReason(3, "Replaced"),
]

let Destiny_Advanced_AwaType_Lookup: EnumLookup = [
   "0": .Destiny_Advanced_AwaType(0, "None"),
   "1": .Destiny_Advanced_AwaType(1, "InsertPlugs"),
]

let Destiny_Advanced_AwaUserSelection_Lookup: EnumLookup = [
   "0": .Destiny_Advanced_AwaUserSelection(0, "None"),
   "1": .Destiny_Advanced_AwaUserSelection(1, "Rejected"),
   "2": .Destiny_Advanced_AwaUserSelection(2, "Approved"),
]

let Destiny_BucketCategory_Lookup: EnumLookup = [
   "0": .Destiny_BucketCategory(0, "Invisible"),
   "1": .Destiny_BucketCategory(1, "Item"),
   "2": .Destiny_BucketCategory(2, "Currency"),
   "3": .Destiny_BucketCategory(3, "Equippable"),
   "4": .Destiny_BucketCategory(4, "Ignored"),
]

let Destiny_BucketScope_Lookup: EnumLookup = [
   "0": .Destiny_BucketScope(0, "Character"),
   "1": .Destiny_BucketScope(1, "Account"),
]

let Destiny_DamageType_Lookup: EnumLookup = [
   "0": .Destiny_DamageType(0, "None"),
   "1": .Destiny_DamageType(1, "Kinetic"),
   "2": .Destiny_DamageType(2, "Arc"),
   "3": .Destiny_DamageType(3, "Thermal"),
   "4": .Destiny_DamageType(4, "Void"),
   "5": .Destiny_DamageType(5, "Raid"),
]

let Destiny_Definitions_DestinyRewardSourceCategory_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyRewardSourceCategory(0, "None"),
   "1": .Destiny_Definitions_DestinyRewardSourceCategory(1, "Activity"),
   "2": .Destiny_Definitions_DestinyRewardSourceCategory(2, "Vendor"),
   "3": .Destiny_Definitions_DestinyRewardSourceCategory(3, "Aggregate"),
]

let Destiny_Definitions_DestinyTalentNodeStepDamageTypes_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(0, "None"),
   "1": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(1, "Kinetic"),
   "2": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(2, "Arc"),
   "4": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(4, "Solar"),
   "8": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(8, "Void"),
   "15": .Destiny_Definitions_DestinyTalentNodeStepDamageTypes(15, "All"),
]

let Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(0, "None"),
   "1": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(1, "Stats"),
   "2": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(2, "Shields"),
   "4": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(4, "Health"),
   "8": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(8, "Revive"),
   "16": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(16, "AimUnderFire"),
   "32": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(32, "Radar"),
   "64": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(64, "Invisibility"),
   "128": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(128, "Reputations"),
   "255": .Destiny_Definitions_DestinyTalentNodeStepGuardianAttributes(255, "All"),
]

let Destiny_Definitions_DestinyTalentNodeStepImpactEffects_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(0, "None"),
   "1": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(1, "ArmorPiercing"),
   "2": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(2, "Ricochet"),
   "4": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(4, "Flinch"),
   "8": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(8, "CollateralDamage"),
   "16": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(16, "Disorient"),
   "32": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(32, "HighlightTarget"),
   "63": .Destiny_Definitions_DestinyTalentNodeStepImpactEffects(63, "All"),
]

let Destiny_Definitions_DestinyTalentNodeStepLightAbilities_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(0, "None"),
   "1": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(1, "Grenades"),
   "2": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(2, "Melee"),
   "4": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(4, "MovementModes"),
   "8": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(8, "Orbs"),
   "16": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(16, "SuperEnergy"),
   "32": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(32, "SuperMods"),
   "63": .Destiny_Definitions_DestinyTalentNodeStepLightAbilities(63, "All"),
]

let Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(0, "None"),
   "1": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(1, "RateOfFire"),
   "2": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(2, "Damage"),
   "4": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(4, "Accuracy"),
   "8": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(8, "Range"),
   "16": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(16, "Zoom"),
   "32": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(32, "Recoil"),
   "64": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(64, "Ready"),
   "128": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(128, "Reload"),
   "256": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(256, "HairTrigger"),
   "512": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(512, "AmmoAndMagazine"),
   "1024": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(1024, "TrackingAndDetonation"),
   "2048": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(2048, "ShotgunSpread"),
   "4096": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(4096, "ChargeTime"),
   "8191": .Destiny_Definitions_DestinyTalentNodeStepWeaponPerformances(8191, "All"),
]

let Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference(0, "MilestoneDefinition"),
   "1": .Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference(1, "CurrentQuestSteps"),
   "2": .Destiny_Definitions_Milestones_DestinyMilestoneDisplayPreference(2, "CurrentActivityChallenges"),
]

let Destiny_Definitions_Milestones_DestinyMilestoneType_Lookup: EnumLookup = [
   "0": .Destiny_Definitions_Milestones_DestinyMilestoneType(0, "Unknown"),
   "1": .Destiny_Definitions_Milestones_DestinyMilestoneType(1, "Tutorial"),
   "2": .Destiny_Definitions_Milestones_DestinyMilestoneType(2, "OneTime"),
   "3": .Destiny_Definitions_Milestones_DestinyMilestoneType(3, "Weekly"),
   "4": .Destiny_Definitions_Milestones_DestinyMilestoneType(4, "Daily"),
   "5": .Destiny_Definitions_Milestones_DestinyMilestoneType(5, "Special"),
]

let Destiny_DestinyActivityDifficultyTier_Lookup: EnumLookup = [
   "0": .Destiny_DestinyActivityDifficultyTier(0, "Trivial"),
   "1": .Destiny_DestinyActivityDifficultyTier(1, "Easy"),
   "2": .Destiny_DestinyActivityDifficultyTier(2, "Normal"),
   "3": .Destiny_DestinyActivityDifficultyTier(3, "Challenging"),
   "4": .Destiny_DestinyActivityDifficultyTier(4, "Hard"),
   "5": .Destiny_DestinyActivityDifficultyTier(5, "Brave"),
   "6": .Destiny_DestinyActivityDifficultyTier(6, "AlmostImpossible"),
   "7": .Destiny_DestinyActivityDifficultyTier(7, "Impossible"),
]

let Destiny_DestinyActivityModeCategory_Lookup: EnumLookup = [
   "0": .Destiny_DestinyActivityModeCategory(0, "None"),
   "1": .Destiny_DestinyActivityModeCategory(1, "PvE"),
   "2": .Destiny_DestinyActivityModeCategory(2, "PvP"),
   "3": .Destiny_DestinyActivityModeCategory(3, "PvECompetitive"),
]

let Destiny_DestinyActivityNavPointType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyActivityNavPointType(0, "Inactive"),
   "1": .Destiny_DestinyActivityNavPointType(1, "PrimaryObjective"),
   "2": .Destiny_DestinyActivityNavPointType(2, "SecondaryObjective"),
   "3": .Destiny_DestinyActivityNavPointType(3, "TravelObjective"),
   "4": .Destiny_DestinyActivityNavPointType(4, "PublicEventObjective"),
   "5": .Destiny_DestinyActivityNavPointType(5, "AmmoCache"),
   "6": .Destiny_DestinyActivityNavPointType(6, "PointTypeFlag"),
   "7": .Destiny_DestinyActivityNavPointType(7, "CapturePoint"),
   "8": .Destiny_DestinyActivityNavPointType(8, "DefensiveEncounter"),
   "9": .Destiny_DestinyActivityNavPointType(9, "GhostInteraction"),
   "10": .Destiny_DestinyActivityNavPointType(10, "KillAi"),
   "11": .Destiny_DestinyActivityNavPointType(11, "QuestItem"),
   "12": .Destiny_DestinyActivityNavPointType(12, "PatrolMission"),
   "13": .Destiny_DestinyActivityNavPointType(13, "Incoming"),
   "14": .Destiny_DestinyActivityNavPointType(14, "ArenaObjective"),
   "15": .Destiny_DestinyActivityNavPointType(15, "AutomationHint"),
   "16": .Destiny_DestinyActivityNavPointType(16, "TrackedQuest"),
]

let Destiny_DestinyAmmunitionType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyAmmunitionType(0, "None"),
   "1": .Destiny_DestinyAmmunitionType(1, "Primary"),
   "2": .Destiny_DestinyAmmunitionType(2, "Special"),
   "3": .Destiny_DestinyAmmunitionType(3, "Heavy"),
   "4": .Destiny_DestinyAmmunitionType(4, "Unknown"),
]

let Destiny_DestinyBreakerType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyBreakerType(0, "None"),
   "1": .Destiny_DestinyBreakerType(1, "ShieldPiercing"),
   "2": .Destiny_DestinyBreakerType(2, "Disruption"),
   "3": .Destiny_DestinyBreakerType(3, "Stagger"),
]

let Destiny_DestinyClass_Lookup: EnumLookup = [
   "0": .Destiny_DestinyClass(0, "Titan"),
   "1": .Destiny_DestinyClass(1, "Hunter"),
   "2": .Destiny_DestinyClass(2, "Warlock"),
   "3": .Destiny_DestinyClass(3, "Unknown"),
]

let Destiny_DestinyCollectibleState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyCollectibleState(0, "None"),
   "1": .Destiny_DestinyCollectibleState(1, "NotAcquired"),
   "2": .Destiny_DestinyCollectibleState(2, "Obscured"),
   "4": .Destiny_DestinyCollectibleState(4, "Invisible"),
   "8": .Destiny_DestinyCollectibleState(8, "CannotAffordMaterialRequirements"),
   "16": .Destiny_DestinyCollectibleState(16, "InventorySpaceUnavailable"),
   "32": .Destiny_DestinyCollectibleState(32, "UniquenessViolation"),
   "64": .Destiny_DestinyCollectibleState(64, "PurchaseDisabled"),
]

let Destiny_DestinyComponentType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyComponentType(0, "None"),
   "100": .Destiny_DestinyComponentType(100, "Profiles"),
   "101": .Destiny_DestinyComponentType(101, "VendorReceipts"),
   "102": .Destiny_DestinyComponentType(102, "ProfileInventories"),
   "103": .Destiny_DestinyComponentType(103, "ProfileCurrencies"),
   "104": .Destiny_DestinyComponentType(104, "ProfileProgression"),
   "105": .Destiny_DestinyComponentType(105, "PlatformSilver"),
   "200": .Destiny_DestinyComponentType(200, "Characters"),
   "201": .Destiny_DestinyComponentType(201, "CharacterInventories"),
   "202": .Destiny_DestinyComponentType(202, "CharacterProgressions"),
   "203": .Destiny_DestinyComponentType(203, "CharacterRenderData"),
   "204": .Destiny_DestinyComponentType(204, "CharacterActivities"),
   "205": .Destiny_DestinyComponentType(205, "CharacterEquipment"),
   "300": .Destiny_DestinyComponentType(300, "ItemInstances"),
   "301": .Destiny_DestinyComponentType(301, "ItemObjectives"),
   "302": .Destiny_DestinyComponentType(302, "ItemPerks"),
   "303": .Destiny_DestinyComponentType(303, "ItemRenderData"),
   "304": .Destiny_DestinyComponentType(304, "ItemStats"),
   "305": .Destiny_DestinyComponentType(305, "ItemSockets"),
   "306": .Destiny_DestinyComponentType(306, "ItemTalentGrids"),
   "307": .Destiny_DestinyComponentType(307, "ItemCommonData"),
   "308": .Destiny_DestinyComponentType(308, "ItemPlugStates"),
   "309": .Destiny_DestinyComponentType(309, "ItemPlugObjectives"),
   "310": .Destiny_DestinyComponentType(310, "ItemReusablePlugs"),
   "400": .Destiny_DestinyComponentType(400, "Vendors"),
   "401": .Destiny_DestinyComponentType(401, "VendorCategories"),
   "402": .Destiny_DestinyComponentType(402, "VendorSales"),
   "500": .Destiny_DestinyComponentType(500, "Kiosks"),
   "600": .Destiny_DestinyComponentType(600, "CurrencyLookups"),
   "700": .Destiny_DestinyComponentType(700, "PresentationNodes"),
   "800": .Destiny_DestinyComponentType(800, "Collectibles"),
   "900": .Destiny_DestinyComponentType(900, "Records"),
   "1000": .Destiny_DestinyComponentType(1000, "Transitory"),
   "1100": .Destiny_DestinyComponentType(1100, "Metrics"),
]

let Destiny_DestinyEnergyType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyEnergyType(0, "Any"),
   "1": .Destiny_DestinyEnergyType(1, "Arc"),
   "2": .Destiny_DestinyEnergyType(2, "Thermal"),
   "3": .Destiny_DestinyEnergyType(3, "Void"),
]

let Destiny_DestinyGamePrivacySetting_Lookup: EnumLookup = [
   "0": .Destiny_DestinyGamePrivacySetting(0, "Open"),
   "1": .Destiny_DestinyGamePrivacySetting(1, "ClanAndFriendsOnly"),
   "2": .Destiny_DestinyGamePrivacySetting(2, "FriendsOnly"),
   "3": .Destiny_DestinyGamePrivacySetting(3, "InvitationOnly"),
   "4": .Destiny_DestinyGamePrivacySetting(4, "Closed"),
]

let Destiny_DestinyGameVersions_Lookup: EnumLookup = [
   "0": .Destiny_DestinyGameVersions(0, "None"),
   "1": .Destiny_DestinyGameVersions(1, "Destiny2"),
   "2": .Destiny_DestinyGameVersions(2, "DLC1"),
   "4": .Destiny_DestinyGameVersions(4, "DLC2"),
   "8": .Destiny_DestinyGameVersions(8, "Forsaken"),
   "16": .Destiny_DestinyGameVersions(16, "YearTwoAnnualPass"),
   "32": .Destiny_DestinyGameVersions(32, "Shadowkeep"),
]

let Destiny_DestinyGatingScope_Lookup: EnumLookup = [
   "0": .Destiny_DestinyGatingScope(0, "None"),
   "1": .Destiny_DestinyGatingScope(1, "Global"),
   "2": .Destiny_DestinyGatingScope(2, "Clan"),
   "3": .Destiny_DestinyGatingScope(3, "Profile"),
   "4": .Destiny_DestinyGatingScope(4, "Character"),
   "5": .Destiny_DestinyGatingScope(5, "Item"),
   "6": .Destiny_DestinyGatingScope(6, "AssumedWorstCase"),
]

let Destiny_DestinyGender_Lookup: EnumLookup = [
   "0": .Destiny_DestinyGender(0, "Male"),
   "1": .Destiny_DestinyGender(1, "Female"),
   "2": .Destiny_DestinyGender(2, "Unknown"),
]

let Destiny_DestinyGraphNodeState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyGraphNodeState(0, "Hidden"),
   "1": .Destiny_DestinyGraphNodeState(1, "Visible"),
   "2": .Destiny_DestinyGraphNodeState(2, "Teaser"),
   "3": .Destiny_DestinyGraphNodeState(3, "Incomplete"),
   "4": .Destiny_DestinyGraphNodeState(4, "Completed"),
]

let Destiny_DestinyItemSortType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyItemSortType(0, "ItemId"),
   "1": .Destiny_DestinyItemSortType(1, "Timestamp"),
   "2": .Destiny_DestinyItemSortType(2, "StackSize"),
]

let Destiny_DestinyItemSubType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyItemSubType(0, "None"),
   "1": .Destiny_DestinyItemSubType(1, "Crucible"),
   "2": .Destiny_DestinyItemSubType(2, "Vanguard"),
   "5": .Destiny_DestinyItemSubType(5, "Exotic"),
   "6": .Destiny_DestinyItemSubType(6, "AutoRifle"),
   "7": .Destiny_DestinyItemSubType(7, "Shotgun"),
   "8": .Destiny_DestinyItemSubType(8, "Machinegun"),
   "9": .Destiny_DestinyItemSubType(9, "HandCannon"),
   "10": .Destiny_DestinyItemSubType(10, "RocketLauncher"),
   "11": .Destiny_DestinyItemSubType(11, "FusionRifle"),
   "12": .Destiny_DestinyItemSubType(12, "SniperRifle"),
   "13": .Destiny_DestinyItemSubType(13, "PulseRifle"),
   "14": .Destiny_DestinyItemSubType(14, "ScoutRifle"),
   "16": .Destiny_DestinyItemSubType(16, "Crm"),
   "17": .Destiny_DestinyItemSubType(17, "Sidearm"),
   "18": .Destiny_DestinyItemSubType(18, "Sword"),
   "19": .Destiny_DestinyItemSubType(19, "Mask"),
   "20": .Destiny_DestinyItemSubType(20, "Shader"),
   "21": .Destiny_DestinyItemSubType(21, "Ornament"),
   "22": .Destiny_DestinyItemSubType(22, "FusionRifleLine"),
   "23": .Destiny_DestinyItemSubType(23, "GrenadeLauncher"),
   "24": .Destiny_DestinyItemSubType(24, "SubmachineGun"),
   "25": .Destiny_DestinyItemSubType(25, "TraceRifle"),
   "26": .Destiny_DestinyItemSubType(26, "HelmetArmor"),
   "27": .Destiny_DestinyItemSubType(27, "GauntletsArmor"),
   "28": .Destiny_DestinyItemSubType(28, "ChestArmor"),
   "29": .Destiny_DestinyItemSubType(29, "LegArmor"),
   "30": .Destiny_DestinyItemSubType(30, "ClassArmor"),
   "31": .Destiny_DestinyItemSubType(31, "Bow"),
]

let Destiny_DestinyItemType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyItemType(0, "None"),
   "1": .Destiny_DestinyItemType(1, "Currency"),
   "2": .Destiny_DestinyItemType(2, "Armor"),
   "3": .Destiny_DestinyItemType(3, "Weapon"),
   "7": .Destiny_DestinyItemType(7, "Message"),
   "8": .Destiny_DestinyItemType(8, "Engram"),
   "9": .Destiny_DestinyItemType(9, "Consumable"),
   "10": .Destiny_DestinyItemType(10, "ExchangeMaterial"),
   "11": .Destiny_DestinyItemType(11, "MissionReward"),
   "12": .Destiny_DestinyItemType(12, "QuestStep"),
   "13": .Destiny_DestinyItemType(13, "QuestStepComplete"),
   "14": .Destiny_DestinyItemType(14, "Emblem"),
   "15": .Destiny_DestinyItemType(15, "Quest"),
   "16": .Destiny_DestinyItemType(16, "Subclass"),
   "17": .Destiny_DestinyItemType(17, "ClanBanner"),
   "18": .Destiny_DestinyItemType(18, "Aura"),
   "19": .Destiny_DestinyItemType(19, "Mod"),
   "20": .Destiny_DestinyItemType(20, "Dummy"),
   "21": .Destiny_DestinyItemType(21, "Ship"),
   "22": .Destiny_DestinyItemType(22, "Vehicle"),
   "23": .Destiny_DestinyItemType(23, "Emote"),
   "24": .Destiny_DestinyItemType(24, "Ghost"),
   "25": .Destiny_DestinyItemType(25, "Package"),
   "26": .Destiny_DestinyItemType(26, "Bounty"),
   "27": .Destiny_DestinyItemType(27, "Wrapper"),
   "28": .Destiny_DestinyItemType(28, "SeasonalArtifact"),
   "29": .Destiny_DestinyItemType(29, "Finisher"),
]

let Destiny_DestinyJoinClosedReasons_Lookup: EnumLookup = [
   "0": .Destiny_DestinyJoinClosedReasons(0, "None"),
   "1": .Destiny_DestinyJoinClosedReasons(1, "InMatchmaking"),
   "2": .Destiny_DestinyJoinClosedReasons(2, "Loading"),
   "4": .Destiny_DestinyJoinClosedReasons(4, "SoloMode"),
   "8": .Destiny_DestinyJoinClosedReasons(8, "InternalReasons"),
   "16": .Destiny_DestinyJoinClosedReasons(16, "DisallowedByGameState"),
   "32768": .Destiny_DestinyJoinClosedReasons(32768, "Offline"),
]

let Destiny_DestinyObjectiveGrantStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyObjectiveGrantStyle(0, "WhenIncomplete"),
   "1": .Destiny_DestinyObjectiveGrantStyle(1, "WhenComplete"),
   "2": .Destiny_DestinyObjectiveGrantStyle(2, "Always"),
]

let Destiny_DestinyPartyMemberStates_Lookup: EnumLookup = [
   "0": .Destiny_DestinyPartyMemberStates(0, "None"),
   "1": .Destiny_DestinyPartyMemberStates(1, "FireteamMember"),
   "2": .Destiny_DestinyPartyMemberStates(2, "PosseMember"),
   "4": .Destiny_DestinyPartyMemberStates(4, "GroupMember"),
   "8": .Destiny_DestinyPartyMemberStates(8, "PartyLeader"),
]

let Destiny_DestinyPresentationDisplayStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyPresentationDisplayStyle(0, "Category"),
   "1": .Destiny_DestinyPresentationDisplayStyle(1, "Badge"),
   "2": .Destiny_DestinyPresentationDisplayStyle(2, "Medals"),
   "3": .Destiny_DestinyPresentationDisplayStyle(3, "Collectible"),
   "4": .Destiny_DestinyPresentationDisplayStyle(4, "Record"),
]

let Destiny_DestinyPresentationNodeState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyPresentationNodeState(0, "None"),
   "1": .Destiny_DestinyPresentationNodeState(1, "Invisible"),
   "2": .Destiny_DestinyPresentationNodeState(2, "Obscured"),
]

let Destiny_DestinyPresentationNodeType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyPresentationNodeType(0, "Default"),
   "1": .Destiny_DestinyPresentationNodeType(1, "Category"),
   "2": .Destiny_DestinyPresentationNodeType(2, "Collectibles"),
   "3": .Destiny_DestinyPresentationNodeType(3, "Records"),
   "4": .Destiny_DestinyPresentationNodeType(4, "Metric"),
]

let Destiny_DestinyPresentationScreenStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyPresentationScreenStyle(0, "Default"),
   "1": .Destiny_DestinyPresentationScreenStyle(1, "CategorySets"),
   "2": .Destiny_DestinyPresentationScreenStyle(2, "Badge"),
]

let Destiny_DestinyProgressionRewardItemAcquisitionBehavior_Lookup: EnumLookup = [
   "0": .Destiny_DestinyProgressionRewardItemAcquisitionBehavior(0, "Instant"),
   "1": .Destiny_DestinyProgressionRewardItemAcquisitionBehavior(1, "PlayerClaimRequired"),
]

let Destiny_DestinyProgressionRewardItemState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyProgressionRewardItemState(0, "None"),
   "1": .Destiny_DestinyProgressionRewardItemState(1, "Invisible"),
   "2": .Destiny_DestinyProgressionRewardItemState(2, "Earned"),
   "4": .Destiny_DestinyProgressionRewardItemState(4, "Claimed"),
   "8": .Destiny_DestinyProgressionRewardItemState(8, "ClaimAllowed"),
]

let Destiny_DestinyProgressionScope_Lookup: EnumLookup = [
   "0": .Destiny_DestinyProgressionScope(0, "Account"),
   "1": .Destiny_DestinyProgressionScope(1, "Character"),
   "2": .Destiny_DestinyProgressionScope(2, "Clan"),
   "3": .Destiny_DestinyProgressionScope(3, "Item"),
   "4": .Destiny_DestinyProgressionScope(4, "ImplicitFromEquipment"),
   "5": .Destiny_DestinyProgressionScope(5, "Mapped"),
   "6": .Destiny_DestinyProgressionScope(6, "MappedAggregate"),
   "7": .Destiny_DestinyProgressionScope(7, "MappedStat"),
   "8": .Destiny_DestinyProgressionScope(8, "MappedUnlockValue"),
]

let Destiny_DestinyProgressionStepDisplayEffect_Lookup: EnumLookup = [
   "0": .Destiny_DestinyProgressionStepDisplayEffect(0, "None"),
   "1": .Destiny_DestinyProgressionStepDisplayEffect(1, "Character"),
   "2": .Destiny_DestinyProgressionStepDisplayEffect(2, "Item"),
]

let Destiny_DestinyRace_Lookup: EnumLookup = [
   "0": .Destiny_DestinyRace(0, "Human"),
   "1": .Destiny_DestinyRace(1, "Awoken"),
   "2": .Destiny_DestinyRace(2, "Exo"),
   "3": .Destiny_DestinyRace(3, "Unknown"),
]

let Destiny_DestinyRecordState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyRecordState(0, "None"),
   "1": .Destiny_DestinyRecordState(1, "RecordRedeemed"),
   "2": .Destiny_DestinyRecordState(2, "RewardUnavailable"),
   "4": .Destiny_DestinyRecordState(4, "ObjectiveNotCompleted"),
   "8": .Destiny_DestinyRecordState(8, "Obscured"),
   "16": .Destiny_DestinyRecordState(16, "Invisible"),
   "32": .Destiny_DestinyRecordState(32, "EntitlementUnowned"),
   "64": .Destiny_DestinyRecordState(64, "CanEquipTitle"),
]

let Destiny_DestinyRecordToastStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyRecordToastStyle(0, "None"),
   "1": .Destiny_DestinyRecordToastStyle(1, "Record"),
   "2": .Destiny_DestinyRecordToastStyle(2, "Lore"),
   "3": .Destiny_DestinyRecordToastStyle(3, "Badge"),
   "4": .Destiny_DestinyRecordToastStyle(4, "MetaRecord"),
   "5": .Destiny_DestinyRecordToastStyle(5, "MedalComplete"),
]

let Destiny_DestinyRecordValueStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyRecordValueStyle(0, "Integer"),
   "1": .Destiny_DestinyRecordValueStyle(1, "Percentage"),
   "2": .Destiny_DestinyRecordValueStyle(2, "Milliseconds"),
   "3": .Destiny_DestinyRecordValueStyle(3, "Boolean"),
   "4": .Destiny_DestinyRecordValueStyle(4, "Decimal"),
]

let Destiny_DestinyScope_Lookup: EnumLookup = [
   "0": .Destiny_DestinyScope(0, "Profile"),
   "1": .Destiny_DestinyScope(1, "Character"),
]

let Destiny_DestinySocketCategoryStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinySocketCategoryStyle(0, "Unknown"),
   "1": .Destiny_DestinySocketCategoryStyle(1, "Reusable"),
   "2": .Destiny_DestinySocketCategoryStyle(2, "Consumable"),
   "3": .Destiny_DestinySocketCategoryStyle(3, "Unlockable"),
   "4": .Destiny_DestinySocketCategoryStyle(4, "Intrinsic"),
   "5": .Destiny_DestinySocketCategoryStyle(5, "EnergyMeter"),
   "6": .Destiny_DestinySocketCategoryStyle(6, "LargePerk"),
]

let Destiny_DestinySocketVisibility_Lookup: EnumLookup = [
   "0": .Destiny_DestinySocketVisibility(0, "Visible"),
   "1": .Destiny_DestinySocketVisibility(1, "Hidden"),
   "2": .Destiny_DestinySocketVisibility(2, "HiddenWhenEmpty"),
   "3": .Destiny_DestinySocketVisibility(3, "HiddenIfNoPlugsAvailable"),
]

let Destiny_DestinyStatAggregationType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyStatAggregationType(0, "CharacterAverage"),
   "1": .Destiny_DestinyStatAggregationType(1, "Character"),
   "2": .Destiny_DestinyStatAggregationType(2, "Item"),
]

let Destiny_DestinyStatCategory_Lookup: EnumLookup = [
   "0": .Destiny_DestinyStatCategory(0, "Gameplay"),
   "1": .Destiny_DestinyStatCategory(1, "Weapon"),
   "2": .Destiny_DestinyStatCategory(2, "Defense"),
   "3": .Destiny_DestinyStatCategory(3, "Primary"),
]

let Destiny_DestinyTalentNodeState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyTalentNodeState(0, "Invalid"),
   "1": .Destiny_DestinyTalentNodeState(1, "CanUpgrade"),
   "2": .Destiny_DestinyTalentNodeState(2, "NoPoints"),
   "3": .Destiny_DestinyTalentNodeState(3, "NoPrerequisites"),
   "4": .Destiny_DestinyTalentNodeState(4, "NoSteps"),
   "5": .Destiny_DestinyTalentNodeState(5, "NoUnlock"),
   "6": .Destiny_DestinyTalentNodeState(6, "NoMaterial"),
   "7": .Destiny_DestinyTalentNodeState(7, "NoGridLevel"),
   "8": .Destiny_DestinyTalentNodeState(8, "SwappingLocked"),
   "9": .Destiny_DestinyTalentNodeState(9, "MustSwap"),
   "10": .Destiny_DestinyTalentNodeState(10, "Complete"),
   "11": .Destiny_DestinyTalentNodeState(11, "Unknown"),
   "12": .Destiny_DestinyTalentNodeState(12, "CreationOnly"),
   "13": .Destiny_DestinyTalentNodeState(13, "Hidden"),
]

let Destiny_DestinyUnlockValueUIStyle_Lookup: EnumLookup = [
   "0": .Destiny_DestinyUnlockValueUIStyle(0, "Automatic"),
   "1": .Destiny_DestinyUnlockValueUIStyle(1, "Fraction"),
   "2": .Destiny_DestinyUnlockValueUIStyle(2, "Checkbox"),
   "3": .Destiny_DestinyUnlockValueUIStyle(3, "Percentage"),
   "4": .Destiny_DestinyUnlockValueUIStyle(4, "DateTime"),
   "5": .Destiny_DestinyUnlockValueUIStyle(5, "FractionFloat"),
   "6": .Destiny_DestinyUnlockValueUIStyle(6, "Integer"),
   "7": .Destiny_DestinyUnlockValueUIStyle(7, "TimeDuration"),
   "8": .Destiny_DestinyUnlockValueUIStyle(8, "Hidden"),
   "9": .Destiny_DestinyUnlockValueUIStyle(9, "Multiplier"),
   "10": .Destiny_DestinyUnlockValueUIStyle(10, "GreenPips"),
   "11": .Destiny_DestinyUnlockValueUIStyle(11, "RedPips"),
   "12": .Destiny_DestinyUnlockValueUIStyle(12, "ExplicitPercentage"),
   "13": .Destiny_DestinyUnlockValueUIStyle(13, "RawFloat"),
]

let Destiny_DestinyVendorFilter_Lookup: EnumLookup = [
   "0": .Destiny_DestinyVendorFilter(0, "None"),
]

let Destiny_DestinyVendorInteractionRewardSelection_Lookup: EnumLookup = [
   "0": .Destiny_DestinyVendorInteractionRewardSelection(0, "None"),
   "1": .Destiny_DestinyVendorInteractionRewardSelection(1, "One"),
   "2": .Destiny_DestinyVendorInteractionRewardSelection(2, "All"),
]

let Destiny_DestinyVendorItemRefundPolicy_Lookup: EnumLookup = [
   "0": .Destiny_DestinyVendorItemRefundPolicy(0, "NotRefundable"),
   "1": .Destiny_DestinyVendorItemRefundPolicy(1, "DeletesItem"),
   "2": .Destiny_DestinyVendorItemRefundPolicy(2, "RevokesLicense"),
]

let Destiny_DestinyVendorItemState_Lookup: EnumLookup = [
   "0": .Destiny_DestinyVendorItemState(0, "None"),
   "1": .Destiny_DestinyVendorItemState(1, "Incomplete"),
   "2": .Destiny_DestinyVendorItemState(2, "RewardAvailable"),
   "4": .Destiny_DestinyVendorItemState(4, "Complete"),
   "8": .Destiny_DestinyVendorItemState(8, "New"),
   "16": .Destiny_DestinyVendorItemState(16, "Featured"),
   "32": .Destiny_DestinyVendorItemState(32, "Ending"),
   "64": .Destiny_DestinyVendorItemState(64, "OnSale"),
   "128": .Destiny_DestinyVendorItemState(128, "Owned"),
   "256": .Destiny_DestinyVendorItemState(256, "WideView"),
   "512": .Destiny_DestinyVendorItemState(512, "NexusAttention"),
   "1024": .Destiny_DestinyVendorItemState(1024, "SetDiscount"),
   "2048": .Destiny_DestinyVendorItemState(2048, "PriceDrop"),
   "4096": .Destiny_DestinyVendorItemState(4096, "DailyOffer"),
   "8192": .Destiny_DestinyVendorItemState(8192, "Charity"),
]

let Destiny_DestinyVendorReplyType_Lookup: EnumLookup = [
   "0": .Destiny_DestinyVendorReplyType(0, "Accept"),
   "1": .Destiny_DestinyVendorReplyType(1, "Decline"),
   "2": .Destiny_DestinyVendorReplyType(2, "Complete"),
]

let Destiny_EquipFailureReason_Lookup: EnumLookup = [
   "0": .Destiny_EquipFailureReason(0, "None"),
   "1": .Destiny_EquipFailureReason(1, "ItemUnequippable"),
   "2": .Destiny_EquipFailureReason(2, "ItemUniqueEquipRestricted"),
   "4": .Destiny_EquipFailureReason(4, "ItemFailedUnlockCheck"),
   "8": .Destiny_EquipFailureReason(8, "ItemFailedLevelCheck"),
   "16": .Destiny_EquipFailureReason(16, "ItemNotOnCharacter"),
]

let Destiny_EquippingItemBlockAttributes_Lookup: EnumLookup = [
   "0": .Destiny_EquippingItemBlockAttributes(0, "None"),
   "1": .Destiny_EquippingItemBlockAttributes(1, "EquipOnAcquire"),
]

let Destiny_HistoricalStats_Definitions_DestinyActivityModeType_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(0, "None"),
   "2": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(2, "Story"),
   "3": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(3, "Strike"),
   "4": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(4, "Raid"),
   "5": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(5, "AllPvP"),
   "6": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(6, "Patrol"),
   "7": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(7, "AllPvE"),
   "9": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(9, "Reserved9"),
   "10": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(10, "Control"),
   "11": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(11, "Reserved11"),
   "12": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(12, "Clash"),
   "13": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(13, "Reserved13"),
   "15": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(15, "CrimsonDoubles"),
   "16": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(16, "Nightfall"),
   "17": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(17, "HeroicNightfall"),
   "18": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(18, "AllStrikes"),
   "19": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(19, "IronBanner"),
   "20": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(20, "Reserved20"),
   "21": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(21, "Reserved21"),
   "22": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(22, "Reserved22"),
   "24": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(24, "Reserved24"),
   "25": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(25, "AllMayhem"),
   "26": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(26, "Reserved26"),
   "27": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(27, "Reserved27"),
   "28": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(28, "Reserved28"),
   "29": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(29, "Reserved29"),
   "30": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(30, "Reserved30"),
   "31": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(31, "Supremacy"),
   "32": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(32, "PrivateMatchesAll"),
   "37": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(37, "Survival"),
   "38": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(38, "Countdown"),
   "39": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(39, "TrialsOfTheNine"),
   "40": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(40, "Social"),
   "41": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(41, "TrialsCountdown"),
   "42": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(42, "TrialsSurvival"),
   "43": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(43, "IronBannerControl"),
   "44": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(44, "IronBannerClash"),
   "45": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(45, "IronBannerSupremacy"),
   "46": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(46, "ScoredNightfall"),
   "47": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(47, "ScoredHeroicNightfall"),
   "48": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(48, "Rumble"),
   "49": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(49, "AllDoubles"),
   "50": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(50, "Doubles"),
   "51": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(51, "PrivateMatchesClash"),
   "52": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(52, "PrivateMatchesControl"),
   "53": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(53, "PrivateMatchesSupremacy"),
   "54": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(54, "PrivateMatchesCountdown"),
   "55": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(55, "PrivateMatchesSurvival"),
   "56": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(56, "PrivateMatchesMayhem"),
   "57": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(57, "PrivateMatchesRumble"),
   "58": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(58, "HeroicAdventure"),
   "59": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(59, "Showdown"),
   "60": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(60, "Lockdown"),
   "61": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(61, "Scorched"),
   "62": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(62, "ScorchedTeam"),
   "63": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(63, "Gambit"),
   "64": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(64, "AllPvECompetitive"),
   "65": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(65, "Breakthrough"),
   "66": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(66, "BlackArmoryRun"),
   "67": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(67, "Salvage"),
   "68": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(68, "IronBannerSalvage"),
   "69": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(69, "PvPCompetitive"),
   "70": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(70, "PvPQuickplay"),
   "71": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(71, "ClashQuickplay"),
   "72": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(72, "ClashCompetitive"),
   "73": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(73, "ControlQuickplay"),
   "74": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(74, "ControlCompetitive"),
   "75": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(75, "GambitPrime"),
   "76": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(76, "Reckoning"),
   "77": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(77, "Menagerie"),
   "78": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(78, "VexOffensive"),
   "79": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(79, "NightmareHunt"),
   "80": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(80, "Elimination"),
   "81": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(81, "Momentum"),
   "82": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(82, "Dungeon"),
   "83": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(83, "Sundial"),
   "84": .Destiny_HistoricalStats_Definitions_DestinyActivityModeType(84, "TrialsOfOsiris"),
]

let Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(0, "None"),
   "1": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(1, "Kills"),
   "2": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(2, "Assists"),
   "3": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(3, "Deaths"),
   "4": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(4, "Criticals"),
   "5": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(5, "KDa"),
   "6": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(6, "KD"),
   "7": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(7, "Score"),
   "8": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(8, "Entered"),
   "9": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(9, "TimePlayed"),
   "10": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(10, "MedalWins"),
   "11": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(11, "MedalGame"),
   "12": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(12, "MedalSpecialKills"),
   "13": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(13, "MedalSprees"),
   "14": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(14, "MedalMultiKills"),
   "15": .Destiny_HistoricalStats_Definitions_DestinyStatsCategoryType(15, "MedalAbilities"),
]

let Destiny_HistoricalStats_Definitions_DestinyStatsGroupType_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(0, "None"),
   "1": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(1, "General"),
   "2": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(2, "Weapons"),
   "3": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(3, "Medals"),
   "100": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(100, "ReservedGroups"),
   "101": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(101, "Leaderboard"),
   "102": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(102, "Activity"),
   "103": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(103, "UniqueWeapon"),
   "104": .Destiny_HistoricalStats_Definitions_DestinyStatsGroupType(104, "Internal"),
]

let Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod(0, "Add"),
   "1": .Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod(1, "Min"),
   "2": .Destiny_HistoricalStats_Definitions_DestinyStatsMergeMethod(2, "Max"),
]

let Destiny_HistoricalStats_Definitions_PeriodType_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_PeriodType(0, "None"),
   "1": .Destiny_HistoricalStats_Definitions_PeriodType(1, "Daily"),
   "2": .Destiny_HistoricalStats_Definitions_PeriodType(2, "AllTime"),
   "3": .Destiny_HistoricalStats_Definitions_PeriodType(3, "Activity"),
]

let Destiny_HistoricalStats_Definitions_UnitType_Lookup: EnumLookup = [
   "0": .Destiny_HistoricalStats_Definitions_UnitType(0, "None"),
   "1": .Destiny_HistoricalStats_Definitions_UnitType(1, "Count"),
   "2": .Destiny_HistoricalStats_Definitions_UnitType(2, "PerGame"),
   "3": .Destiny_HistoricalStats_Definitions_UnitType(3, "Seconds"),
   "4": .Destiny_HistoricalStats_Definitions_UnitType(4, "Points"),
   "5": .Destiny_HistoricalStats_Definitions_UnitType(5, "Team"),
   "6": .Destiny_HistoricalStats_Definitions_UnitType(6, "Distance"),
   "7": .Destiny_HistoricalStats_Definitions_UnitType(7, "Percent"),
   "8": .Destiny_HistoricalStats_Definitions_UnitType(8, "Ratio"),
   "9": .Destiny_HistoricalStats_Definitions_UnitType(9, "Boolean"),
   "10": .Destiny_HistoricalStats_Definitions_UnitType(10, "WeaponType"),
   "11": .Destiny_HistoricalStats_Definitions_UnitType(11, "Standing"),
   "12": .Destiny_HistoricalStats_Definitions_UnitType(12, "Milliseconds"),
   "13": .Destiny_HistoricalStats_Definitions_UnitType(13, "CompletionReason"),
]

let Destiny_ItemBindStatus_Lookup: EnumLookup = [
   "0": .Destiny_ItemBindStatus(0, "NotBound"),
   "1": .Destiny_ItemBindStatus(1, "BoundToCharacter"),
   "2": .Destiny_ItemBindStatus(2, "BoundToAccount"),
   "3": .Destiny_ItemBindStatus(3, "BoundToGuild"),
]

let Destiny_ItemLocation_Lookup: EnumLookup = [
   "0": .Destiny_ItemLocation(0, "Unknown"),
   "1": .Destiny_ItemLocation(1, "Inventory"),
   "2": .Destiny_ItemLocation(2, "Vault"),
   "3": .Destiny_ItemLocation(3, "Vendor"),
   "4": .Destiny_ItemLocation(4, "Postmaster"),
]

let Destiny_ItemPerkVisibility_Lookup: EnumLookup = [
   "0": .Destiny_ItemPerkVisibility(0, "Visible"),
   "1": .Destiny_ItemPerkVisibility(1, "Disabled"),
   "2": .Destiny_ItemPerkVisibility(2, "Hidden"),
]

let Destiny_ItemState_Lookup: EnumLookup = [
   "0": .Destiny_ItemState(0, "None"),
   "1": .Destiny_ItemState(1, "Locked"),
   "2": .Destiny_ItemState(2, "Tracked"),
   "4": .Destiny_ItemState(4, "Masterwork"),
]

let Destiny_PlugAvailabilityMode_Lookup: EnumLookup = [
   "0": .Destiny_PlugAvailabilityMode(0, "Normal"),
   "1": .Destiny_PlugAvailabilityMode(1, "UnavailableIfSocketContainsMatchingPlugCategory"),
   "2": .Destiny_PlugAvailabilityMode(2, "AvailableIfSocketContainsMatchingPlugCategory"),
]

let Destiny_PlugUiStyles_Lookup: EnumLookup = [
   "0": .Destiny_PlugUiStyles(0, "None"),
   "1": .Destiny_PlugUiStyles(1, "Masterwork"),
]

let Destiny_Requests_Actions_DestinySocketArrayType_Lookup: EnumLookup = [
   "0": .Destiny_Requests_Actions_DestinySocketArrayType(0, "Default"),
   "1": .Destiny_Requests_Actions_DestinySocketArrayType(1, "Intrinsic"),
]

let Destiny_SocketPlugSources_Lookup: EnumLookup = [
   "0": .Destiny_SocketPlugSources(0, "None"),
   "1": .Destiny_SocketPlugSources(1, "InventorySourced"),
   "2": .Destiny_SocketPlugSources(2, "ReusablePlugItems"),
   "4": .Destiny_SocketPlugSources(4, "ProfilePlugSet"),
   "8": .Destiny_SocketPlugSources(8, "CharacterPlugSet"),
]

let Destiny_SocketTypeActionType_Lookup: EnumLookup = [
   "0": .Destiny_SocketTypeActionType(0, "InsertPlug"),
   "1": .Destiny_SocketTypeActionType(1, "InfuseItem"),
   "2": .Destiny_SocketTypeActionType(2, "ReinitializeSocket"),
]

let Destiny_SpecialItemType_Lookup: EnumLookup = [
   "0": .Destiny_SpecialItemType(0, "None"),
   "1": .Destiny_SpecialItemType(1, "SpecialCurrency"),
   "8": .Destiny_SpecialItemType(8, "Armor"),
   "9": .Destiny_SpecialItemType(9, "Weapon"),
   "23": .Destiny_SpecialItemType(23, "Engram"),
   "24": .Destiny_SpecialItemType(24, "Consumable"),
   "25": .Destiny_SpecialItemType(25, "ExchangeMaterial"),
   "27": .Destiny_SpecialItemType(27, "MissionReward"),
   "29": .Destiny_SpecialItemType(29, "Currency"),
]

let Destiny_TierType_Lookup: EnumLookup = [
   "0": .Destiny_TierType(0, "Unknown"),
   "1": .Destiny_TierType(1, "Currency"),
   "2": .Destiny_TierType(2, "Basic"),
   "3": .Destiny_TierType(3, "Common"),
   "4": .Destiny_TierType(4, "Rare"),
   "5": .Destiny_TierType(5, "Superior"),
   "6": .Destiny_TierType(6, "Exotic"),
]

let Destiny_TransferStatuses_Lookup: EnumLookup = [
   "0": .Destiny_TransferStatuses(0, "CanTransfer"),
   "1": .Destiny_TransferStatuses(1, "ItemIsEquipped"),
   "2": .Destiny_TransferStatuses(2, "NotTransferrable"),
   "4": .Destiny_TransferStatuses(4, "NoRoomInDestination"),
]

let Destiny_VendorDisplayCategorySortOrder_Lookup: EnumLookup = [
   "0": .Destiny_VendorDisplayCategorySortOrder(0, "Default"),
   "1": .Destiny_VendorDisplayCategorySortOrder(1, "SortByTier"),
]

let Destiny_VendorInteractionType_Lookup: EnumLookup = [
   "0": .Destiny_VendorInteractionType(0, "Unknown"),
   "1": .Destiny_VendorInteractionType(1, "Undefined"),
   "2": .Destiny_VendorInteractionType(2, "QuestComplete"),
   "3": .Destiny_VendorInteractionType(3, "QuestContinue"),
   "4": .Destiny_VendorInteractionType(4, "ReputationPreview"),
   "5": .Destiny_VendorInteractionType(5, "RankUpReward"),
   "6": .Destiny_VendorInteractionType(6, "TokenTurnIn"),
   "7": .Destiny_VendorInteractionType(7, "QuestAccept"),
   "8": .Destiny_VendorInteractionType(8, "ProgressTab"),
   "9": .Destiny_VendorInteractionType(9, "End"),
   "10": .Destiny_VendorInteractionType(10, "Start"),
]

let Destiny_VendorItemStatus_Lookup: EnumLookup = [
   "0": .Destiny_VendorItemStatus(0, "Success"),
   "1": .Destiny_VendorItemStatus(1, "NoInventorySpace"),
   "2": .Destiny_VendorItemStatus(2, "NoFunds"),
   "4": .Destiny_VendorItemStatus(4, "NoProgression"),
   "8": .Destiny_VendorItemStatus(8, "NoUnlock"),
   "16": .Destiny_VendorItemStatus(16, "NoQuantity"),
   "32": .Destiny_VendorItemStatus(32, "OutsidePurchaseWindow"),
   "64": .Destiny_VendorItemStatus(64, "NotAvailable"),
   "128": .Destiny_VendorItemStatus(128, "UniquenessViolation"),
   "256": .Destiny_VendorItemStatus(256, "UnknownError"),
   "512": .Destiny_VendorItemStatus(512, "AlreadySelling"),
   "1024": .Destiny_VendorItemStatus(1024, "Unsellable"),
   "2048": .Destiny_VendorItemStatus(2048, "SellingInhibited"),
   "4096": .Destiny_VendorItemStatus(4096, "AlreadyOwned"),
   "8192": .Destiny_VendorItemStatus(8192, "DisplayOnly"),
]

let Fireteam_FireteamDateRange_Lookup: EnumLookup = [
   "0": .Fireteam_FireteamDateRange(0, "All"),
   "1": .Fireteam_FireteamDateRange(1, "Now"),
   "2": .Fireteam_FireteamDateRange(2, "TwentyFourHours"),
   "3": .Fireteam_FireteamDateRange(3, "FortyEightHours"),
   "4": .Fireteam_FireteamDateRange(4, "ThisWeek"),
]

let Fireteam_FireteamPlatform_Lookup: EnumLookup = [
   "0": .Fireteam_FireteamPlatform(0, "Unknown"),
   "1": .Fireteam_FireteamPlatform(1, "Playstation4"),
   "2": .Fireteam_FireteamPlatform(2, "XboxOne"),
   "3": .Fireteam_FireteamPlatform(3, "Blizzard"),
   "4": .Fireteam_FireteamPlatform(4, "Steam"),
   "5": .Fireteam_FireteamPlatform(5, "Stadia"),
]

let Fireteam_FireteamPlatformInviteResult_Lookup: EnumLookup = [
   "0": .Fireteam_FireteamPlatformInviteResult(0, "None"),
   "1": .Fireteam_FireteamPlatformInviteResult(1, "Success"),
   "2": .Fireteam_FireteamPlatformInviteResult(2, "AlreadyInFireteam"),
   "3": .Fireteam_FireteamPlatformInviteResult(3, "Throttled"),
   "4": .Fireteam_FireteamPlatformInviteResult(4, "ServiceError"),
]

let Fireteam_FireteamPublicSearchOption_Lookup: EnumLookup = [
   "0": .Fireteam_FireteamPublicSearchOption(0, "PublicAndPrivate"),
   "1": .Fireteam_FireteamPublicSearchOption(1, "PublicOnly"),
   "2": .Fireteam_FireteamPublicSearchOption(2, "PrivateOnly"),
]

let Fireteam_FireteamSlotSearch_Lookup: EnumLookup = [
   "0": .Fireteam_FireteamSlotSearch(0, "NoSlotRestriction"),
   "1": .Fireteam_FireteamSlotSearch(1, "HasOpenPlayerSlots"),
   "2": .Fireteam_FireteamSlotSearch(2, "HasOpenPlayerOrAltSlots"),
]

let Forum_CommunityContentSortMode_Lookup: EnumLookup = [
   "0": .Forum_CommunityContentSortMode(0, "Trending"),
   "1": .Forum_CommunityContentSortMode(1, "Latest"),
   "2": .Forum_CommunityContentSortMode(2, "HighestRated"),
]

let Forum_ForumMediaType_Lookup: EnumLookup = [
   "0": .Forum_ForumMediaType(0, "None"),
   "1": .Forum_ForumMediaType(1, "Image"),
   "2": .Forum_ForumMediaType(2, "Video"),
   "3": .Forum_ForumMediaType(3, "Youtube"),
]

let Forum_ForumPostPopularity_Lookup: EnumLookup = [
   "0": .Forum_ForumPostPopularity(0, "Empty"),
   "1": .Forum_ForumPostPopularity(1, "Default"),
   "2": .Forum_ForumPostPopularity(2, "Discussed"),
   "3": .Forum_ForumPostPopularity(3, "CoolStory"),
   "4": .Forum_ForumPostPopularity(4, "HeatingUp"),
   "5": .Forum_ForumPostPopularity(5, "Hot"),
]

let Forum_ForumPostSortEnum_Lookup: EnumLookup = [
   "0": .Forum_ForumPostSortEnum(0, "Default"),
   "1": .Forum_ForumPostSortEnum(1, "OldestFirst"),
]

let Forum_ForumRecruitmentIntensityLabel_Lookup: EnumLookup = [
   "0": .Forum_ForumRecruitmentIntensityLabel(0, "None"),
   "1": .Forum_ForumRecruitmentIntensityLabel(1, "Casual"),
   "2": .Forum_ForumRecruitmentIntensityLabel(2, "Professional"),
]

let Forum_ForumRecruitmentToneLabel_Lookup: EnumLookup = [
   "0": .Forum_ForumRecruitmentToneLabel(0, "None"),
   "1": .Forum_ForumRecruitmentToneLabel(1, "FamilyFriendly"),
   "2": .Forum_ForumRecruitmentToneLabel(2, "Rowdy"),
]

let Forum_ForumTopicsCategoryFiltersEnum_Lookup: EnumLookup = [
   "0": .Forum_ForumTopicsCategoryFiltersEnum(0, "None"),
   "1": .Forum_ForumTopicsCategoryFiltersEnum(1, "Links"),
   "2": .Forum_ForumTopicsCategoryFiltersEnum(2, "Questions"),
   "4": .Forum_ForumTopicsCategoryFiltersEnum(4, "AnsweredQuestions"),
   "8": .Forum_ForumTopicsCategoryFiltersEnum(8, "Media"),
   "16": .Forum_ForumTopicsCategoryFiltersEnum(16, "TextOnly"),
   "32": .Forum_ForumTopicsCategoryFiltersEnum(32, "Announcement"),
   "64": .Forum_ForumTopicsCategoryFiltersEnum(64, "BungieOfficial"),
   "128": .Forum_ForumTopicsCategoryFiltersEnum(128, "Polls"),
]

let Forum_ForumTopicsQuickDateEnum_Lookup: EnumLookup = [
   "0": .Forum_ForumTopicsQuickDateEnum(0, "All"),
   "1": .Forum_ForumTopicsQuickDateEnum(1, "LastYear"),
   "2": .Forum_ForumTopicsQuickDateEnum(2, "LastMonth"),
   "3": .Forum_ForumTopicsQuickDateEnum(3, "LastWeek"),
   "4": .Forum_ForumTopicsQuickDateEnum(4, "LastDay"),
]

let Forum_ForumTopicsSortEnum_Lookup: EnumLookup = [
   "0": .Forum_ForumTopicsSortEnum(0, "Default"),
   "1": .Forum_ForumTopicsSortEnum(1, "LastReplied"),
   "2": .Forum_ForumTopicsSortEnum(2, "MostReplied"),
   "3": .Forum_ForumTopicsSortEnum(3, "Popularity"),
   "4": .Forum_ForumTopicsSortEnum(4, "Controversiality"),
   "5": .Forum_ForumTopicsSortEnum(5, "Liked"),
   "6": .Forum_ForumTopicsSortEnum(6, "HighestRated"),
   "7": .Forum_ForumTopicsSortEnum(7, "MostUpvoted"),
]

let Forums_ForumFlagsEnum_Lookup: EnumLookup = [
   "0": .Forums_ForumFlagsEnum(0, "None"),
   "1": .Forums_ForumFlagsEnum(1, "BungieStaffPost"),
   "2": .Forums_ForumFlagsEnum(2, "ForumNinjaPost"),
   "4": .Forums_ForumFlagsEnum(4, "ForumMentorPost"),
   "8": .Forums_ForumFlagsEnum(8, "TopicBungieStaffPosted"),
   "16": .Forums_ForumFlagsEnum(16, "TopicBungieVolunteerPosted"),
   "32": .Forums_ForumFlagsEnum(32, "QuestionAnsweredByBungie"),
   "64": .Forums_ForumFlagsEnum(64, "QuestionAnsweredByNinja"),
   "128": .Forums_ForumFlagsEnum(128, "CommunityContent"),
]

let Forums_ForumPostCategoryEnums_Lookup: EnumLookup = [
   "0": .Forums_ForumPostCategoryEnums(0, "None"),
   "1": .Forums_ForumPostCategoryEnums(1, "TextOnly"),
   "2": .Forums_ForumPostCategoryEnums(2, "Media"),
   "4": .Forums_ForumPostCategoryEnums(4, "Link"),
   "8": .Forums_ForumPostCategoryEnums(8, "Poll"),
   "16": .Forums_ForumPostCategoryEnums(16, "Question"),
   "32": .Forums_ForumPostCategoryEnums(32, "Answered"),
   "64": .Forums_ForumPostCategoryEnums(64, "Announcement"),
   "128": .Forums_ForumPostCategoryEnums(128, "ContentComment"),
   "256": .Forums_ForumPostCategoryEnums(256, "BungieOfficial"),
   "512": .Forums_ForumPostCategoryEnums(512, "NinjaOfficial"),
   "1024": .Forums_ForumPostCategoryEnums(1024, "Recruitment"),
]

let GlobalAlertLevel_Lookup: EnumLookup = [
   "0": .GlobalAlertLevel(0, "Unknown"),
   "1": .GlobalAlertLevel(1, "Blue"),
   "2": .GlobalAlertLevel(2, "Yellow"),
   "3": .GlobalAlertLevel(3, "Red"),
]

let GlobalAlertType_Lookup: EnumLookup = [
   "0": .GlobalAlertType(0, "GlobalAlert"),
   "1": .GlobalAlertType(1, "StreamingAlert"),
]

let GroupsV2_Capabilities_Lookup: EnumLookup = [
   "0": .GroupsV2_Capabilities(0, "None"),
   "1": .GroupsV2_Capabilities(1, "Leaderboards"),
   "2": .GroupsV2_Capabilities(2, "Callsign"),
   "4": .GroupsV2_Capabilities(4, "OptionalConversations"),
   "8": .GroupsV2_Capabilities(8, "ClanBanner"),
   "16": .GroupsV2_Capabilities(16, "D2InvestmentData"),
   "32": .GroupsV2_Capabilities(32, "Tags"),
   "64": .GroupsV2_Capabilities(64, "Alliances"),
]

let GroupsV2_ChatSecuritySetting_Lookup: EnumLookup = [
   "0": .GroupsV2_ChatSecuritySetting(0, "Group"),
   "1": .GroupsV2_ChatSecuritySetting(1, "Admins"),
]

let GroupsV2_GroupAllianceStatus_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupAllianceStatus(0, "Unallied"),
   "1": .GroupsV2_GroupAllianceStatus(1, "Parent"),
   "2": .GroupsV2_GroupAllianceStatus(2, "Child"),
]

let GroupsV2_GroupApplicationResolveState_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupApplicationResolveState(0, "Unresolved"),
   "1": .GroupsV2_GroupApplicationResolveState(1, "Accepted"),
   "2": .GroupsV2_GroupApplicationResolveState(2, "Denied"),
   "3": .GroupsV2_GroupApplicationResolveState(3, "Rescinded"),
]

let GroupsV2_GroupDateRange_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupDateRange(0, "All"),
   "1": .GroupsV2_GroupDateRange(1, "PastDay"),
   "2": .GroupsV2_GroupDateRange(2, "PastWeek"),
   "3": .GroupsV2_GroupDateRange(3, "PastMonth"),
   "4": .GroupsV2_GroupDateRange(4, "PastYear"),
]

let GroupsV2_GroupHomepage_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupHomepage(0, "Wall"),
   "1": .GroupsV2_GroupHomepage(1, "Forum"),
   "2": .GroupsV2_GroupHomepage(2, "AllianceForum"),
]

let GroupsV2_GroupMemberCountFilter_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupMemberCountFilter(0, "All"),
   "1": .GroupsV2_GroupMemberCountFilter(1, "OneToTen"),
   "2": .GroupsV2_GroupMemberCountFilter(2, "ElevenToOneHundred"),
   "3": .GroupsV2_GroupMemberCountFilter(3, "GreaterThanOneHundred"),
]

let GroupsV2_GroupPostPublicity_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupPostPublicity(0, "Public"),
   "1": .GroupsV2_GroupPostPublicity(1, "Alliance"),
   "2": .GroupsV2_GroupPostPublicity(2, "Private"),
]

let GroupsV2_GroupPotentialMemberStatus_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupPotentialMemberStatus(0, "None"),
   "1": .GroupsV2_GroupPotentialMemberStatus(1, "Applicant"),
   "2": .GroupsV2_GroupPotentialMemberStatus(2, "Invitee"),
]

let GroupsV2_GroupSortBy_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupSortBy(0, "Name"),
   "1": .GroupsV2_GroupSortBy(1, "Date"),
   "2": .GroupsV2_GroupSortBy(2, "Popularity"),
   "3": .GroupsV2_GroupSortBy(3, "Id"),
]

let GroupsV2_GroupType_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupType(0, "General"),
   "1": .GroupsV2_GroupType(1, "Clan"),
]

let GroupsV2_GroupsForMemberFilter_Lookup: EnumLookup = [
   "0": .GroupsV2_GroupsForMemberFilter(0, "All"),
   "1": .GroupsV2_GroupsForMemberFilter(1, "Founded"),
   "2": .GroupsV2_GroupsForMemberFilter(2, "NonFounded"),
]

let GroupsV2_HostGuidedGamesPermissionLevel_Lookup: EnumLookup = [
   "0": .GroupsV2_HostGuidedGamesPermissionLevel(0, "None"),
   "1": .GroupsV2_HostGuidedGamesPermissionLevel(1, "Beginner"),
   "2": .GroupsV2_HostGuidedGamesPermissionLevel(2, "Member"),
]

let GroupsV2_MembershipOption_Lookup: EnumLookup = [
   "0": .GroupsV2_MembershipOption(0, "Reviewed"),
   "1": .GroupsV2_MembershipOption(1, "Open"),
   "2": .GroupsV2_MembershipOption(2, "Closed"),
]

let GroupsV2_RuntimeGroupMemberType_Lookup: EnumLookup = [
   "0": .GroupsV2_RuntimeGroupMemberType(0, "None"),
   "1": .GroupsV2_RuntimeGroupMemberType(1, "Beginner"),
   "2": .GroupsV2_RuntimeGroupMemberType(2, "Member"),
   "3": .GroupsV2_RuntimeGroupMemberType(3, "Admin"),
   "4": .GroupsV2_RuntimeGroupMemberType(4, "ActingFounder"),
   "5": .GroupsV2_RuntimeGroupMemberType(5, "Founder"),
]

let Ignores_IgnoreLength_Lookup: EnumLookup = [
   "0": .Ignores_IgnoreLength(0, "None"),
   "1": .Ignores_IgnoreLength(1, "Week"),
   "2": .Ignores_IgnoreLength(2, "TwoWeeks"),
   "3": .Ignores_IgnoreLength(3, "ThreeWeeks"),
   "4": .Ignores_IgnoreLength(4, "Month"),
   "5": .Ignores_IgnoreLength(5, "ThreeMonths"),
   "6": .Ignores_IgnoreLength(6, "SixMonths"),
   "7": .Ignores_IgnoreLength(7, "Year"),
   "8": .Ignores_IgnoreLength(8, "Forever"),
   "9": .Ignores_IgnoreLength(9, "ThreeMinutes"),
   "10": .Ignores_IgnoreLength(10, "Hour"),
   "11": .Ignores_IgnoreLength(11, "ThirtyDays"),
]

let Ignores_IgnoreStatus_Lookup: EnumLookup = [
   "0": .Ignores_IgnoreStatus(0, "NotIgnored"),
   "1": .Ignores_IgnoreStatus(1, "IgnoredUser"),
   "2": .Ignores_IgnoreStatus(2, "IgnoredGroup"),
   "4": .Ignores_IgnoreStatus(4, "IgnoredByGroup"),
   "8": .Ignores_IgnoreStatus(8, "IgnoredPost"),
   "16": .Ignores_IgnoreStatus(16, "IgnoredTag"),
   "32": .Ignores_IgnoreStatus(32, "IgnoredGlobal"),
]

let Trending_TrendingEntryType_Lookup: EnumLookup = [
   "0": .Trending_TrendingEntryType(0, "News"),
   "1": .Trending_TrendingEntryType(1, "DestinyItem"),
   "2": .Trending_TrendingEntryType(2, "DestinyActivity"),
   "3": .Trending_TrendingEntryType(3, "DestinyRitual"),
   "4": .Trending_TrendingEntryType(4, "SupportArticle"),
   "5": .Trending_TrendingEntryType(5, "Creation"),
   "6": .Trending_TrendingEntryType(6, "Stream"),
   "7": .Trending_TrendingEntryType(7, "Update"),
   "8": .Trending_TrendingEntryType(8, "Link"),
   "9": .Trending_TrendingEntryType(9, "ForumTag"),
   "10": .Trending_TrendingEntryType(10, "Container"),
   "11": .Trending_TrendingEntryType(11, "Release"),
]

let User_OptInFlags_Lookup: EnumLookup = [
   "0": .User_OptInFlags(0, "None"),
   "1": .User_OptInFlags(1, "Newsletter"),
   "2": .User_OptInFlags(2, "System"),
   "4": .User_OptInFlags(4, "Marketing"),
   "8": .User_OptInFlags(8, "UserResearch"),
   "16": .User_OptInFlags(16, "CustomerService"),
   "32": .User_OptInFlags(32, "Social"),
   "64": .User_OptInFlags(64, "PlayTests"),
   "128": .User_OptInFlags(128, "PlayTestsLocal"),
   "256": .User_OptInFlags(256, "Careers"),
]

