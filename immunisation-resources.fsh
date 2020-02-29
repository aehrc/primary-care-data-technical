// PROFILES 

Profile: AUPrimaryCareImmunisation
Parent: http://hl7.org.au/fhir/StructureDefinition/au-immunization
Id: AUPrimaryCareImmunisation
Title: "AU Primary Care Immunisation"
Description: "This profile defines an immunisation structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareImmunisation"
* vaccineCode.coding[amtVaccineCode] MS
* occurrence[x] MS
* note.text MS

Profile: AUPrimaryCareImmunisationList
Parent: List
Id: AUPrimaryCareImmunisationList
Title: "AU Primary Care Immunisation List"
Description: "This profile defines an immunisation list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareImmunisationList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareImmunisation)
* entry.item MS
* emptyReason MS

