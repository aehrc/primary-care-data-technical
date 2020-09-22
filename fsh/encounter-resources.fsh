// PROFILES 

Profile: AUPrimaryCareEncounter
Parent: http://hl7.org.au/fhir/StructureDefinition/au-encounter
Id: AuPrimaryCareEncounter
Title: "AU Primary Care Encounter"
Description: "This profile defines core information for encounter records in an Australian practice to practice record transfer."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* class MS
* subject only Reference(AUPrimaryCarePatient)
* subject MS
* period MS
* reasonCode MS