// EXTENSIONS 

Instance: cf-1554873772436
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "cf-1554873772436"
* text.status = #generated
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* type = #intolerance
* category = #food
* criticality = #low
* code.coding = http://snomed.info/sct#735455001 "Eosinophilic esophagitis caused by food"
* patient.reference = "Patient/cf-1552457299474"
* recordedDate = 2019-04-09T14:00:00.000Z
* reaction[0].substance.coding = http://snomed.info/sct#412071004 "Wheat"
* reaction[0].manifestation.coding = http://snomed.info/sct#235599003 "Eosinophilic esophagitis"
* reaction[1].substance.coding = http://snomed.info/sct#226760005 "Dairy foods"
* reaction[1].manifestation.coding = http://snomed.info/sct#235599003 "Eosinophilic esophagitis"

Instance: cf-1554878062500
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "cf-1554878062500"
* text.status = #generated
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "Unconfirmed"
* verificationStatus.text = "unconfirmed"
* type = #allergy
* category = #food
* criticality = #unable-to-assess
* code.coding = http://snomed.info/sct#91935009 "Allergy to peanuts"
* patient.reference = "Patient/cf-1552457299474"
* recordedDate = 2019-04-09T14:00:00.000Z
* asserter.reference = "Patient/cf-1552457299474"
* reaction.substance.coding = http://snomed.info/sct#762952008 "Peanut"
* reaction.manifestation.coding = http://snomed.info/sct#126485001 "Urticaria"

Instance: B0E0A3ADB59E2F77D6D51ADCA7DAD6B2.6
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "B0E0A3ADB59E2F77D6D51ADCA7DAD6B2.6"
* meta.versionId = "20060222130000"
* meta.lastUpdated = 2006-02-22T13:00:00+00:00
* text.status = #generated
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* category = #medication
* criticality = #high
* code.coding = http://oridashi.com.au/code/bp-drug-class#2 "Penicillin"
* code.text = "Penicillin"
* patient.reference = "Patient/cf-1552457299474"
* recordedDate = 2006-02-23
* recorder.reference = "Practitioner/cf-1573174872703"
* reaction.manifestation.coding[0] = http://oridashi.com.au/system/code/bestpracticereaction#1 "Anaphylaxis"
* reaction.manifestation.coding[1] = http://snomed.info/sct#39579001 "Anaphylaxis"
* reaction.manifestation.text = "Anaphylaxis"
* reaction.severity = #severe

Instance: 4E756D076EDCAF7552FFF6CF7B7BB2A1.18
InstanceOf: AUPrimaryCareAllergyIntolerance
Title: "4E756D076EDCAF7552FFF6CF7B7BB2A1.18"
* meta.versionId = "20180412005602"
* meta.lastUpdated = 2018-04-12T00:56:02.153+00:00
* text.status = #generated
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "active"
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "confirmed"
* category = #medication
* criticality = #low
* code.coding = http://oridashi.com.au/system/code/md-drug-class#1AA89EE6CE4C79150C522899B2721609 "ALPHA-ADRENERGIC BLOCKERS"
* code.text = "ALPHA-ADRENERGIC BLOCKERS"
* patient.reference = "Patient/cf-1552457299474"
* recordedDate = 2018-04-12
* recorder.reference = "Practitioner/cf-1573174872703"
* reaction.manifestation.text = "rash"
* reaction.severity = #moderate

