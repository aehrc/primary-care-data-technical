Profile: AUPrimaryCareWaistCircumference
Parent: Observation
Id: AUPrimaryCareWaistCircumference
Title: "AU Primary Care Waist Circumference"
Description: """
The measurement of the circumference of the waist.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareWaistCircumference"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 1..1 MS and SNOMED 1..1 MS
* code.coding[LOINC] = $LOINC#8280-0
* code.coding[SNOMED] = $SNOMED#160625004
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "cm"
* valueQuantity.code 1..1 MS
* valueQuantity.code = http://unitsofmeasure.org#cm
* valueQuantity.value 1..1 MS


Profile: AUPrimaryCareBodyMassIndex
Parent: Observation
Id: AUPrimaryCareBodyMassIndex
Title: "AU Primary Care Body Mass Index"
Description: """
The measurement of the circumference of the waist.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareBodyMassIndex"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 1..1 MS and SNOMED 1..1 MS
* code.coding[LOINC] = $LOINC#39156-5
* code.coding[SNOMED] = $SNOMED#60621009
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "kg/m^2"
* valueQuantity.code 1..1 MS
* valueQuantity.code = http://unitsofmeasure.org#kg/m^2
* valueQuantity.value 1..1 MS

Profile: AUPrimaryCareAbsoluteCVDRisk
Parent: Observation
Id: AUPrimaryCareAbsoluteCVDRisk
Title: "AU Primary Care Absolute CVD Risk"
Description: """
Calculatd risk score using an assessment tool used to calculate the absolute cardiovascular disease risk (CVD) in the next 5 years.

**Usage** 

Use to record the results for each component parameter and the CVD risk assessment total score.

Record as a single instance per observation in a health record.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAbsoluteCVDRisk"
* status 1..1 MS
* code 1..1 MS
* code.coding 1..1 MD
* code.coding = ObservationCode#absolutecvdrisk
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "%"
* valueQuantity.code 1..1 MS
* valueQuantity.code = http://unitsofmeasure.org#%
* valueQuantity.value 1..1 MS
