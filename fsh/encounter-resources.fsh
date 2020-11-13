// PROFILES 

Profile: AUPrimaryCareEncounter
Parent: http://hl7.org.au/fhir/StructureDefinition/au-encounter
Id: AUPrimaryCareEncounter
Title: "AU Primary Care Encounter"
Description: "This profile defines core information for encounter records in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounter"
* class MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* period MS
* reasonCode MS


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

