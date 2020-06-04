// PROFILES 

Profile: AUPrimaryCareFollowUp
Parent: CarePlan
Id: AUPrimaryCareFollowUp
Title: "AU Primary Care Follow UP"
Description: "This profile defines a follow up structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context. It uses a CarePlan resource, but is not intended to be a fully fledged Care Plan. CarePlans may be profiled in the future to support a proper Care Plan in the Australian primary care context."
* ^url = "http://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFollowUp"
* status = #active
* intent = #proposal
* title 1..1
* title MS
* period.start MS
* note 0..1     //dh todo - this doesn't seem useful...
* note MS

//dh todo - excluded a number of the elements to 'ensure' this profile is used as expected (so recipients can be confident where dtata is)
* activity 0..0     //don't use activity for this

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
* emptyReason MS

