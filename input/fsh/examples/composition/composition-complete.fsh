Instance: aupc-compositionComplete
InstanceOf: AUPrimaryCareComposition
// BaseType: Composition 
Title: "Example composition with all sections populated"
Description: """
The composition for a patient with all sections completed 
"""
Usage: #Example


* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>A complete example  of an extract</div>"
* status = #final
* identifier.system = "http://clinfhir.com/fhir/namingSystem/test"
* identifier.value = "testing"

* type = $LOINC#11503-0 "Medical Records"
* author = Reference(aupc-practitioner1)
* author.display = "Marcus Welby"

* subject = Reference(aupc-patient1)
* subject.display = "John Doe"
* date = "2020-04-21"

* section[medicalHistoryList].entry = Reference(aupc-medicalHistoryList)    //defined in condition+procedure-examples
* section[medicalHistoryList].code = $LOINC#11348-0 "Medical History"
* section[medicalHistoryList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Polio and asthma</div>"
* section[medicalHistoryList].text.status = #generated

* section[adverseReactionList].entry = Reference(aupc-adverseReactionList)  //defined allergyIntolerance-examples
* section[adverseReactionList].code = $LOINC#48765-2 "Adverse Reactions"
* section[adverseReactionList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Peanuts and others</div>"
* section[adverseReactionList].text.status = #generated

* section[vaccinationList].entry = Reference(aupc-immunizationList) //defined in immunizations-examples.fsh
* section[vaccinationList].code = $LOINC#41291-6 "Immunization"
* section[vaccinationList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Immunizations</div>"
* section[vaccinationList].text.status = #generated

* section[medicineList].entry = Reference(aupc-medicineList) //defined in medication-examples.fsh
* section[medicineList].code = $LOINC#10160-0 "Medicine list"
* section[medicineList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Medications</div>"
* section[medicineList].text.status = #generated

* section[familyHistoryList].entry = Reference(aupc-familyHistoryList) //defined in familyHistory-examples.fsh
* section[familyHistoryList].code = $LOINC#10157-6 "Family history list"
* section[familyHistoryList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Father with diabetes</div>"
* section[familyHistoryList].text.status = #generated
* section[familyHistoryList].entry = Reference(aupc-familyHistoryList)


//Doesn't refer to a List - multiple Observations - todo should it?
* section[pregnancyHistory].code = $LOINC#10163-4  "History of pregnancies"
* section[pregnancyHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>History of pregnancies</div>"
* section[pregnancyHistory].text.status = #generated
* section[pregnancyHistory].entry[0] = Reference(aupc-gravidity1) //defined in observation-examples.fsh
* section[pregnancyHistory].entry[1] = Reference(aupc-parity1) //defined in observation-examples.fsh
* section[pregnancyHistory].entry[2] = Reference(aupc-gestationOnScan1) //defined in observation-examples.fsh
* section[pregnancyHistory].entry[3] = Reference(aupc-edd1) //defined in observation-examples.fsh
* section[pregnancyHistory].entry[4] = Reference(aupc-lmp1) //defined in observation-examples.fsh

//Social History
* section[socialHistory].code = $LOINC#29762-2  "Social History Narrative"
* section[socialHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Social History</div>"
* section[socialHistory].text.status = #generated
* section[socialHistory].entry = Reference(aupc-smoker1) //defined in socialhistory-examples.fsh

//dh followups
* section[followUp].code = $LOINC#69730-0  "Follow ups"
* section[followUp].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Follow ups</div>"
* section[followUp].text.status = #generated
* section[followUp].entry = Reference(aupc-followUpList)

