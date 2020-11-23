// PROFILES 

Profile: AUPrimaryCareEncounter
Parent: http://hl7.org.au/fhir/StructureDefinition/au-encounter
Id: AUPrimaryCareEncounter
Title: "AU Primary Care Encounter"
Description: """
Record of a patient encounter including timing, reason, type and participating practitoner.

**Usage**

Reason for Encounter - Use to record the reason, or reasons, for initiation of any type of healthcare encounter or contact between a healthcare provider and an individual who is the subject of care. The reason may be for clinical, social or administrative purposes.

"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounter"
* status = #finished
* class MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type.code"
* participant ^slicing.rules = #open
* participant contains 
    primaryperformer 0..1 MS 
* participant[primaryperformer].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[primaryperformer].type 1..1 MS
* participant[primaryperformer].individual.type = "Practitioner"
* participant[primaryperformer].individual.type 1..1 MS
* participant[primaryperformer].individual.display 1..1 MS
* period MS
* reasonCode MS
* serviceProvider MS
* serviceProvider.display MS


Profile: AUPrimaryCareEncounterList
Parent: List
Id: AUPrimaryCareEncounterList
Title: "AU Primary Care Encounter List"
Description: "This profile defines a encounter list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounterList"
* status = #current
* mode = #snapshot
* entry.item only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounter)
* entry.item MS

