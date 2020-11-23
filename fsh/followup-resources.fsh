// PROFILES 

Profile: AUPrimaryCareFollowUp
Parent: CarePlan
Id: AUPrimaryCareFollowUp
Title: "AU Primary Care Follow up"
Description: """
Health-related service or activity to be delivered by a clinician, organisation or agency at a future time.

**Usage**

Use to record a request for a health-related service or activity to be delivered by a clinician, organisation or agency.

This item has been designed as a framework that can be used as the basis for:
- a request from one clinician, organisation or agency to another clinician, organisation or agency for a health-related service. For example: a referral to a specialist clinician for treatment or a second clinical opinion; transfer of care to an emergency department; four hourly vital signs monitoring; and provision of home services from a municipal council; or
- a request for a follow up service to be scheduled for the same clinician, organisation or agency. For example: a review appointment in outpatients in 6 weeks.
"""
* ^url = "http://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFollowUp"
* status = #active
* intent = #proposal
* category = $SNOMED#412774003
* activity 1..* MS
* activity.detail MS
* activity.detail.code MS
* activity.detail.scheduledTiming MS
* activity.detail.scheduledTiming.event MS


Profile: AUPrimaryCareFollowUpList
Parent: List
Id: AUPrimaryCareFollowUpList
Title: "AU Primary Care Follow Up List"
Description: "This profile defines a follow up list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "http://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFollowUpList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareFollowUp)
* entry.item MS


