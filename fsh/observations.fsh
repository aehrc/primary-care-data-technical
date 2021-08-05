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
Parent: http://hl7.org/fhir/StructureDefinition/bmi
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
* code.coding contains SNOMED 1..1 MS
* code.coding[SNOMED] = $SNOMED#60621009
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS


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
* code.coding 1..1 MS
* code.coding = ObservationCode#absolute-cvd-risk
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


Profile: AUPrimaryCareHeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyheight
Id: AUPrimaryCareHeight
Title: "AU Primary Care Height"
Description: """
Height observation
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareHeight"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains SNOMED 1..1 MS
* code.coding[SNOMED] = $SNOMED#50373000
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime 1..1 MS

Profile: AUPrimaryCareWeight
Parent: http://hl7.org/fhir/StructureDefinition/bodyweight
Id: AUPrimaryCareWeight
Title: "AU Primary Care Weight"
Description: """
Weight observation
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareWeight"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains SNOMED 1..1 MS
* code.coding[SNOMED] = $SNOMED#27113001
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS

Profile: AUPrimaryCareBloodPressure
Parent: http://hl7.org/fhir/StructureDefinition/bp
Id: AUPrimaryCareBloodPressure
Title: "AU Primary Care Blood Pressure"
Description: """
Blood pressure observation
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareBloodPressure"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains SNOMED 1..1 MS
* code.coding[SNOMED] = $SNOMED#75367002
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS

Profile: AUPrimaryCareHeartRate
Parent: http://hl7.org/fhir/StructureDefinition/heartrate
Id: AUPrimaryCareHeartRate
Title: "AU Primary Care Heart Rate"
Description: """
Heart Rate observation
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareHeartRate"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains SNOMED 1..1 MS
* code.coding[SNOMED] = $SNOMED#364075005
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS

