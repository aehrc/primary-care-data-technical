// Example file
// https://docs.google.com/document/d/1pHJn84fgzyKPnYyzlm8dsRnIs9iICENk8RfReKB6Tyg/edit


//-------- Aliases
Alias: $clinicalCondition = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status

Instance: aupc-maryFictitious
InstanceOf: AUPrimaryCareComposition
//BaseType: Composition 
Title: "Mary Fictitious example"
Description: """
Rendering a supplied clincial example into a bundle
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
* subject = Reference(maryFictitious)
* subject.display = "Mary Fictitious"

* date = "2020-04-21"

//medical history
* section[medicalHistoryList].entry = Reference(mf-medicalHistoryList)    //defined in condition+procedure-examples
* section[medicalHistoryList].code = $LOINC#11348-0 "Medical History"
* section[medicalHistoryList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hypertension, Rheumatoid Arthritis and bipolar disorder</div>"
* section[medicalHistoryList].text.status = #generated

//Social History
* section[socialHistory].code = $LOINC#29762-2  "Social History Narrative"
//* section[socialHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><ul><li>Widowed May 2019</li><li>line 2</li></ul></div>"
* section[socialHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Widowed May 2019</div>"

* section[socialHistory].text.status = #generated
* section[socialHistory].entry = Reference(mf-SocialHistoryList) //defined in socialhistory-examples.fsh


* section[adverseReactionList].entry = Reference(aupc-adverseReactionEmpty) //defined in supporting.fsh
* section[adverseReactionList].code = http://loinc.org#48765-2 "Adverse Reactions"
* section[adverseReactionList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No known allergies</div>"
* section[adverseReactionList].text.status = #generated

* section[vaccinationList].entry = Reference(aupc-immunizationEmpty) //defined in supporting.fsh
* section[vaccinationList].code = http://loinc.org#41291-6 "Immunization"
* section[vaccinationList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No known immunizations</div>"
* section[vaccinationList].text.status = #generated


* section[medicineList].code = http://loinc.org#10160-0 "Medication List"
//* section[medicineList].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>meds</div>"

* section[medicineList].text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
<ul>
<li>Sevikar HCT 40/10/25</li>
<li>Methotrexate</li>
<li>lithium carbonate</li>
<li>Prednisolone during Rheumatoid Arthritis exascerbation</li>

</ul>

</div>

"""

* section[medicineList].text.status = #generated
* section[medicineList].entry = Reference(mf-medicineList) //defined in supporting.fsh

//family history
* section[familyHistory].entry = Reference(mf-familyHistoryList)    //defined in condition+procedure-examples
* section[familyHistory].code = $LOINC#11348-0 "Family History"
* section[familyHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Mother and Sister hypothyroid in 30s</div>"
* section[familyHistory].text.status = #generated


//Follow up
* section[followUp].code = http://loinc.org#89083-0 "Follow up visit item set"

* section[followUp].text.div = """
<div xmlns='http://www.w3.org/1999/xhtml'>
<ul>
<li>Discuss HRT</li>
<li>Due for screening mammogram age 50</li>
<li>Due for bowel cancer screening age 50</li>
<li>CST due in 3 years for now</li>
<li>Refer for bone mineral densitometry next visit as  her use of prednisolone, her rheumatoid arthritis, her alcohol intake and her peri-menopausal status increase her risk of osteoporosis</li>

</ul>

</div>

"""
* section[followUp].text.status = #generated




// ----------------------- medications --------------

//The list that references all of the medication resources - Condition and procedure
Instance: mf-medicineList
InstanceOf: AUPrimaryCareMedicineList
//BaseType: List 
Title: "Medication List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"

* mode = #snapshot
* status = #current
* subject = Reference(maryFictitious)
* entry.item = Reference(mf-medication1)
* entry[1].item = Reference(mf-medication2)
* entry[2].item = Reference(mf-medication3)

Instance: mf-medication1
InstanceOf: AUPrimaryCareMedicationStatement
//BaseType: MedicationStatement
Description: "Sevikar HCT 40/10/25"
Title: "Sevikar HCT 40/10/25"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Sevikar HCT 40/10/25</div>"
* subject = Reference(maryFictitious)
* status = #active
* medicationCodeableConcept.text = "Sevikar HCT 40/10/25"

Instance: mf-medication2
InstanceOf: AUPrimaryCareMedicationStatement
//BaseType: MedicationStatement
Description: "Methotrexate"
Title: "SMethotrexate"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Methotrexate</div>"
* subject = Reference(maryFictitious)
* status = #active
* medicationCodeableConcept.text = "Methotrexate"

Instance: mf-medication3
InstanceOf: AUPrimaryCareMedicationStatement
//BaseType: MedicationStatement
Description: "lithium carbonate"
Title: "lithium carbonate"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>lithium carbonate</div>"
* subject = Reference(maryFictitious)
* status = #active
* medicationCodeableConcept.text = "lithium carbonate"


// ----------------------- medical history
//The list that references all of the medicalhistory resources - Condition and procedure
Instance: mf-medicalHistoryList
InstanceOf: AUPrimaryCareMedicalHistoryList
//BaseType: List 
Title: "Medical History List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hypertension, Rheumatoid Arthritis and bipolar disorder</div>"

* mode = #snapshot
* status = #current
* subject = Reference(maryFictitious)
* entry.item = Reference(mf-condition1)
* entry[1].item = Reference(mf-condition2)
* entry[2].item = Reference(mf-condition3)
* entry[3].item = Reference(mf-procedure1)
//* entry[4].item = Reference(mf-procedure2)

Instance: mf-condition1
InstanceOf: AUPrimaryCareCondition
//BaseType: Condition
Description: "Hypertension"
Title: "Hypertension"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hypertension</div>"
* asserter = Reference(aupc-practitioner1)
* subject = Reference(maryFictitious)
* clinicalStatus.coding = $clinicalCondition#active
* verificationStatus.coding = $verificationStatus#confirmed
* category.coding = $SNOMED#439401001
* code.coding[snomedCondition] = $SNOMED#59621000 "Essential hypertension (disorder)"


Instance: mf-condition2
InstanceOf: AUPrimaryCareCondition
//BaseType: Condition
Description: "Rheumatoid Arthritis"
Title: "Rheumatoid Arthritis"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Rheumatoid Arthritis</div>"
* asserter = Reference(aupc-practitioner1)
* subject = Reference(maryFictitious)
* clinicalStatus.coding = $clinicalCondition#active
* verificationStatus.coding = $verificationStatus#confirmed
* category.coding = $SNOMED#439401001
* code.coding[snomedCondition] = $SNOMED#69896004 "Rheumatoid Arthritis (disorder)"

Instance: mf-condition3
InstanceOf: AUPrimaryCareCondition
//BaseType: Condition
Description: "Bipolar disorder"
Title: "Bipolar disorder"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Bipolar disorder</div>"
* asserter = Reference(aupc-practitioner1)
* subject = Reference(maryFictitious)
* clinicalStatus.coding = $clinicalCondition#active
* verificationStatus.coding = $verificationStatus#confirmed
* category.coding = $SNOMED#439401001
* code.coding[snomedCondition] = $SNOMED#13746004 "Bipolar disorder (disorder)"

Instance: mf-procedure1
InstanceOf: AUPrimaryCareProcedure
//BaseType: Procedure
Description: "UteroVaginal prolapse repair"
Title: "UteroVaginal prolapse repair"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>UteroVaginal prolapse repair (with mesh) </div>"
* status = #completed
* subject = Reference(aupc-patient1)
* code.coding = $SNOMED#238034001 "Repair of vaginal wall prolapse (procedure)"



// ---------------------------------- social history --------------
Instance: mf-SocialHistoryList
InstanceOf: AUPrimaryCareSocialHistoryList
//BaseType: List 
Title: "Social History resources"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Social history resources</div>"

* mode = #snapshot
* status = #current
* subject = Reference(maryFictitious)
* entry.item = Reference(mfWidowed)

Instance: mfWidowed
InstanceOf: Observation
//BaseType: Observation
Description: "Widowed May 2019"
Title: "Widowed May 2019"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Widowed May 2019r</div>"

* status = #final
* subject = Reference(aupc-patient1)
* effectiveDateTime = "2020-04-01"

* code.coding = $SNOMED#33553000  "Widowed"

//------------ family history

Instance: mf-familyHistory1
InstanceOf: AUPrimaryCareFamilyMemberHistory
//BaseType: FamilyMemberHistory
Description: "Mother hypothyroid"
Title: "Mother hypothyroid"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Mother hypothyroid</div>"

* status = #completed
* patient = Reference(maryFictitious)
* name = "Mummy"
* relationship = $SNOMED#72705000 "Mother (person)"
* bornDate = "1956"

* condition.code = $SNOMED#40930008 "Hypothyroidism (disorder)"
* condition.onsetString = "30 years"

Instance: mf-familyHistory2
InstanceOf: AUPrimaryCareFamilyMemberHistory
//BaseType: FamilyMemberHistory
Description: "Sister hypothyroid"
Title: "Sister hypothyroid"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Sister hypothyroid</div>"

* status = #completed
* patient = Reference(maryFictitious)
* name = "Sis"
* relationship = $SNOMED#27733009 "Sister (person)"
* bornDate = "1956"

* condition.code = $SNOMED#40930008 "Hypothyroidism (disorder)"
* condition.onsetString = "30 years"

//The list of all the family history items
Instance: mf-familyHistoryList
InstanceOf: AUPrimaryCareFamilyMemberHistoryList
//BaseType: List 
Title: "Family History List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Father with diabetes</div>"

* mode = #snapshot
* status = #current
* subject = Reference(maryFictitious)
* entry.item = Reference(mf-familyHistory1)
* entry[1].item = Reference(mf-familyHistory2)

//========================= Patient resource

Instance: maryFictitious
InstanceOf: AUPrimaryCarePatient
//BaseType: Patient 
Description: "Supporting patient for examples"
Title: "Mary Fictitious"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Mary Fictitious. Female aged 49</div>"



* name.family = "Fictitious"
* name.given = "Mary"
* name.text = "Mary Fictitious"
* birthDate = "1971"
* gender = #female

* address.text = "23 Thule st"