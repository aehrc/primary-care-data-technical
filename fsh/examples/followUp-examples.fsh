Instance: aupc-followup1
InstanceOf: AUPrimaryCareFollowUp
//BaseType: CarePlan 
Description: "Review to check Blood Pressure"
Title: "Blood Pressure review"

* status = #active
* intent = #proposal
* title = "Follow up for Blood Pressure check"
* period.start = "2020-05-05"       //this is when the BP check is due

* subject = Reference(aupc-patient1)
* subject.display = "John Doe"

* note.text = "Need to use large sized cuff..."

//The list that references all of the followup resources 
Instance: aupc-followUpList
InstanceOf: AUPrimaryCareFollowUpList
//BaseType: List 
Title: "Followup list"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>3 allergies</div>"

* mode = #snapshot
* status = #current
* subject = Reference(aupc-patient1)
* entry.item = Reference(aupc-followup1)
