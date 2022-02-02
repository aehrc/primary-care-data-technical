Instance: aupc-compositionEmpty
InstanceOf: AUPrimaryCareComposition
//BaseType: Composition 
Title: "Example composition with no data"
Description: """
The composition for a patient with no relevant history. Required sections are present with no data.
This shows ONLY required elements. List resources are contained.
"""
Usage: #Example
/*
* contained[0] = medicalHistoryEmpty
* contained[1] = adverseReactionEmpty
* contained[2] = immunizationEmpty
* contained[3] = medicineListEmpty
*/

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No known data</div>"

* status = #final

* identifier.system = "http://clinfhir.com/fhir/namingSystem/test"
* identifier.value = "testingEmpty"

* type = http://loinc.org#11503-0 "Medical Records"
* author = Reference(aupc-practitioner1)
* subject = Reference(aupc-patient1)

* date = "2020-04-21"

* section[medicalHistoryList].entry = Reference(aupc-medicalHistoryEmpty) //defined in supporting.fsh
* section[medicalHistoryList].code = http://loinc.org#11348-0 "Medical History"
* section[medicalHistoryList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No significant medical history</div>"
* section[medicalHistoryList].text.status = #generated

* section[adverseReactionList].entry = Reference(aupc-adverseReactionEmpty) //defined in supporting.fsh
* section[adverseReactionList].code = http://loinc.org#48765-2 "Adverse Reactions"
* section[adverseReactionList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Allergies</div>"
* section[adverseReactionList].text.status = #generated

* section[vaccinationList].entry = Reference(aupc-immunizationEmpty) //defined in supporting.fsh
* section[vaccinationList].code = http://loinc.org#41291-6 "Immunization"
* section[vaccinationList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No known immunizations</div>"
* section[vaccinationList].text.status = #generated

* section[medicineList].entry = Reference(aupc-medicineListEmpty) //defined in supporting.fsh
* section[medicineList].code = http://loinc.org#10160-0 "Medication List"
* section[medicineList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No known medications</div>"
* section[medicineList].text.status = #generated

