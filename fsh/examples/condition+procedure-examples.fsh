
//condition and procedure examples. Called 'medical history' in the IG
//Includes a List that references all of them
Instance: aupc-condition1
InstanceOf: AUPrimaryCareCondition
//BaseType: Condition
Description: "Polio"
Title: "Conformed diagnosis of Polio"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Polio</div>"

* clinicalStatus.coding.system =  "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category.coding.system = $SNOMED
* category.coding.code = #439401001

//* code.coding.system = $SNOMED
//* code.coding.code = #398102009

* code.coding[snomedCondition] = $SNOMED#398102009
* onsetDateTime = "1913-03-05"

* asserter = Reference(aupc-practitioner1)
* subject = Reference(aupc-patient1)

Instance: aupc-condition2
InstanceOf: AUPrimaryCareCondition
//BaseType: Condition
Description: "Asthma"
Title: "Conformed diagnosis of Asthma"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Ashma</div>"

* clinicalStatus.coding.system =  "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category.coding.system = $SNOMED
* category.coding.code = #439401001

//* code.coding.system = $SNOMED
//* code.coding.code = #138875005
* code = $SNOMED#138875005 "Asthma"

* onsetDateTime = "1989-03-05"

* asserter = Reference(aupc-patient1)
* subject = Reference(aupc-patient1)

Instance: aupc-procedure1
InstanceOf: AUPrimaryCareProcedure
//BaseType: Procedure
Description: "Stent, coronary artery"
Title: "Stent, coronary artery"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Stent, coronary artery</div>"
* status = #completed
* subject = Reference(aupc-patient1)
* code = $SNOMED#36969009 "Placement of stent in coronary artery"
* code.coding[1] = http://oridashi.com.au/system/code/bestpracticeterm#3579 "Stent, coronary artery"

* performedPeriod.start = "2017-12-28"

Instance: aupc-procedure2
InstanceOf: AUPrimaryCareProcedure
//BaseType: Procedure
Description: "Plantar wart excision"
Title: "Plantar wart excision"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Plantar wart excision</div>"
* status = #completed
* subject = Reference(aupc-patient1)

* code = http://oridashi.com.au/system/code/medicaldirectorterm#surg.foot@planw "Plantar wart excision"
* performedPeriod.start = "2017-12-28"

//The list that references all of the medicalhistory resources - Condition and procedure
Instance: aupc-medicalHistoryList
InstanceOf: AUPrimaryCareMedicalHistoryList
//BaseType: List 
Title: "Medical History List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Polio, asthma, warts and a stent</div>"

* mode = #snapshot
* status = #current
* subject = Reference(aupc-patient1)
* entry.item = Reference(aupc-condition1)
* entry[1].item = Reference(aupc-condition2)
* entry[2].item = Reference(aupc-procedure1)
* entry[3].item = Reference(aupc-procedure2)