// EXTENSIONS 

//Alias: $SNOMED = http://snomed.info/sct

Instance: aupc-allergy1
InstanceOf: AUPrimaryCareAllergyIntolerance
Description: "Oesophagitis caused by dairy food"
Title: "Oesophagitis caused by dairy food"
//BaseType: AllergyIntolerance 

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Oesophagitis</div>"
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* type = #intolerance
* category = #food
* criticality = #low
* code.coding = http://snomed.info/sct#735455001 "Eosinophilic esophagitis caused by food"
* patient.reference = "Patient/aupc-patient1"
* recordedDate = 2019-04-09T14:00:00.000Z
* reaction[0].substance.coding = http://snomed.info/sct#412071004 "Wheat"
* reaction[0].manifestation.coding = http://snomed.info/sct#235599003 "Eosinophilic esophagitis"
* reaction[1].substance.coding = http://snomed.info/sct#226760005 "Dairy foods"
* reaction[1].manifestation.coding = http://snomed.info/sct#235599003 "Eosinophilic esophagitis"

Instance: aupc-allergy2
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "Peanut allergy"
Description: "Urticaria as a result of a Peanut allergy"
//BaseType: AllergyIntolerance 
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Peanut allergy</div>"
* text.status = #additional
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "Unconfirmed"
* verificationStatus.text = "unconfirmed"
* type = #allergy
* category = #food
* criticality = #unable-to-assess
* code.coding = http://snomed.info/sct#91935009 "Allergy to peanuts"
* patient.reference = "Patient/aupc-patient1"
* recordedDate = 2019-04-09T14:00:00.000Z
* asserter.reference = "Patient/aupc-patient1"
* reaction.substance.coding = http://snomed.info/sct#762952008 "Peanut"
* reaction.manifestation.coding = http://snomed.info/sct#126485001 "Urticaria"


Instance: aupc-allergy3
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "Penicillin anaphylaxis"
Description: "Penicillin anaphylaxis"
//BaseType: AllergyIntolerance 

//* meta.versionId = "20060222130000"
//* meta.lastUpdated = 2006-02-22T13:00:00+00:00
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Penicillin anaphylaxis</div>"
* text.status = #additional
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* category = #medication
* criticality = #high
* code.coding = http://oridashi.com.au/code/bp-drug-class#2 "Penicillin"
* code.text = "Penicillin"
* patient.reference = "Patient/aupc-patient1"
* recordedDate = 2006-02-23
* recorder.reference = "Practitioner/aupc-practitioner1"
* reaction.substance.coding =  $SNOMED#764146007 "Penicillin"

* reaction.manifestation.coding[0] = http://oridashi.com.au/system/code/bestpracticereaction#1 "Anaphylaxis"
* reaction.manifestation.coding[1] = http://snomed.info/sct#39579001 "Anaphylaxis"
* reaction.manifestation.text = "Anaphylaxis"
* reaction.severity = #severe

Instance: aupc-allergy4
InstanceOf: AUPrimaryCareAllergyIntolerance
//BaseType: AllergyIntolerance 
Title: "Alpha blocker rash"
Description: "A rash as a consequence to Alpha adrenergic blockers"
//* meta.versionId = "20180412005602"
//* meta.lastUpdated = 2018-04-12T00:56:02.153+00:00
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Rash to alpha blockers</div>"
* text.status = #additional
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* category = #medication
* criticality = #low
* code.coding = http://oridashi.com.au/system/code/md-drug-class#1AA89EE6CE4C79150C522899B2721609 "ALPHA-ADRENERGIC BLOCKERS"
* code.text = "ALPHA-ADRENERGIC BLOCKERS"
* patient.reference = "Patient/aupc-patient1"
* recordedDate = 2018-04-12
* recorder.reference = "Practitioner/aupc-practitioner1"

* reaction.substance.coding =  $SNOMED#372623002 "Substance with central alpha adrenergic receptor agonist mechanism of action (substance)"
* reaction.manifestation.text = "rash"
* reaction.severity = #moderate

Instance: aupc-adverseReactionList
InstanceOf: AUPrimaryCareAllergyIntoleranceList
//BaseType: List 
Title: "Allergy List"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No allerrgies or intolerances known</div>"

* mode = #snapshot
* status = #current
* subject = Reference(aupc-patient1)
* entry.item = Reference(aupc-allergy1)
* entry[1].item = Reference(aupc-allergy2)
* entry[2].item = Reference(aupc-allergy3)
* entry[3].item = Reference(aupc-allergy4)