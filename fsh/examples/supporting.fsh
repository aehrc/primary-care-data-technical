//base examples used by others
//note that the BaseType: is used to create the link to the example in the IG so do't delete them!

//Aliases - will be available to all 
Alias: $SNOMED = http://snomed.info/sct
Alias: $LOINC = http://loinc.org

Instance: aupc-patient1
InstanceOf: AUPrimaryCarePatient
//BaseType: Patient 
Description: "Supporting patient for examples"
Title: "Patient"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>French speaking patient. Needs interpreter</div>"

//needs a french interpreter
* extension[patient-interpreterRequired].valueBoolean = true

* communication.language.text = "French"
* communication.preferred = true

* name.family = "Doe"
* name.given = "Jenny"
* name.text = "Jenny Doe"
* birthDate = "1989-01-02"
* gender = #female

* address.text = "23 Thule st"
* telecom.system = #email
* telecom.value = "jenny@myemailserver.com"

* generalPractitioner = Reference(aupc-practitioner1)

Instance: aupc-practitioner1
InstanceOf: Practitioner
//BaseType: Practitioner 
Description: "Supporting practitioner for examples"
Title: "Practitioner"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr Marcus Welby</div>"

* name.text = "Marcus Welby"


// ===========  empty Lists for Compositions...
Instance: aupc-medicalHistoryEmpty
InstanceOf: AUPrimaryCareMedicalHistoryList
//BaseType: List 
Title: "No significant history"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No significant medical history known</div>"

* mode = #snapshot
* status = #current
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"

//a list with a coupld of 
Instance: aupc-adverseReactionEmpty
InstanceOf: AUPrimaryCareAllergyIntoleranceList
//BaseType: List 
Title: "No significant history"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No allergies or adverse reactions known</div>"

* mode = #snapshot
* status = #current
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"

Instance: aupc-immunizationEmpty
InstanceOf: AUPrimaryCareImmunisationList
//BaseType: List 
Title: "No significant history"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No Immunizations known</div>"

* mode = #snapshot
* status = #current
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"

Instance: aupc-medicineListEmpty
InstanceOf: AUPrimaryCareMedicineList
//BaseType: List 
Title: "No significant history"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No Medications known</div>"

* mode = #snapshot
* status = #current
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#nilknown "Nil Known"