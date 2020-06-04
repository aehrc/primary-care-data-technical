//Medication examples and a List pointing to them all

Instance: aupc-medicationstatement1
InstanceOf: AUPrimaryCareMedicationStatement //MedicationStatement //
//BaseType: MedicationStatement
Description: "Simvastatin"
Title: "Simvastatin"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Simvastatin 10mg daily</div>"
* status = #active
* contained = medication1

* effectivePeriod.start = "2018-11-12"
* dateAsserted = "2018-11-12"
* informationSource = Reference(aupc-practitioner1)
* reasonCode = http://oridashi.com.au/system/code/medicaldirectorterm#hypet "Hypertension"
* reasonCode.text = "Hypertension"

* dosage.text = "1 daily m.d.u. (30) 5 repeats"

//* dosage.asNeededCodeableConcept.text = "test" //= false  //todo - generates error 
* dosage.asNeededBoolean = true
* dosage.route = http://oridashi.com.au/system/code/medicaldirectormedicationroute#PO "Oral - Swallowed"

* medicationReference.reference = "#medication1"
* subject = Reference(aupc-patient1)


Instance: medication1
InstanceOf: AUPrimaryCareMedication
//BaseType: Medication
Description: "Simvastatin"
Title: "Simvastatin"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Simvastatin</div>"

* code = http://oridashi.com.au/system/code/medicaldirectordrug#22138 "SIMVASTATIN 10mg Tablet"
* code.text = "SIMVASTATIN 10mg Tablet"
* code.coding[1] = $SNOMED#28211011000036108 "simvastatin 10 mg tablet, 30"
* code.coding[1].extension.url = "http://hl7.org.au/fhir/StructureDefinition/medication-type"
* code.coding[1].extension.valueCoding = http://hl7.org.au/fhir/CodeSystem/medication-type#UPG "Unbranded package with no container"
* code.coding[2] = http://pbs.gov.au/code/item#2011W "Simvastatin"
* code.coding[3] = http://oridashi.com.au/system/code/medicaldirectorgeneric#HMG "Simvastatin"
* code.coding[4] = http://www.whocc.no/atc#C10AA01  "Simvastatin"


* form.text = "Tablet"

Instance: aupc-medicineList
InstanceOf: AUPrimaryCareMedicineList
//BaseType: List 
Title: "No significant history"
Usage: #example

* subject = Reference(aupc-patient1)

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>No significant medical history</div>"

* mode = #snapshot
* status = #current
* entry.item = Reference(aupc-medicationstatement1)
