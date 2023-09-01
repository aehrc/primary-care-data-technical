// Immunization Profiles and Immunization list 

Profile: AUPrimaryCareImmunisation
Parent: http://hl7.org.au/fhir/core/StructureDefinition/au-core-immunization
Id: AUPrimaryCareImmunisation
Title: "AU Primary Care Immunisation"
Description: """
A vaccine that has been administered to an individual.

**Usage**

Use to record details about a vaccination that had been administered to an individual.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareImmunisation"
// vaccineCode - core does not have missing/empty codes


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

