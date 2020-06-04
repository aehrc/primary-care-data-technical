//examples for family history - plus list resource


Instance: aupc-familyHistory1
InstanceOf: AUPrimaryCareFamilyMemberHistory
//BaseType: FamilyMemberHistory
Description: "Father with diabetes"
Title: "Father with diabetes"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Father with diabetes</div>"

* status = #completed
* patient = Reference(aupc-patient1)
* name = "Tom Daniel Smith"
* relationship = $SNOMED#444295003 "Father of Subject"
* bornDate = "1956"

* condition.code = $SNOMED#73211009 "Diabetes mellitus (disorder)"
* condition.contributedToDeath = true


//The list of all the family history items
Instance: aupc-familyHistoryList
InstanceOf: AUPrimaryCareFamilyMemberHistoryList
//BaseType: List 
Title: "Family History List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Father with diabetes</div>"

* mode = #snapshot
* status = #current
* subject = Reference(aupc-patient1)
* entry.item = Reference(aupc-familyHistory1)
