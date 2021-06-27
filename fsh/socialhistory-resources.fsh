// PROFILES 

Profile: AUPrimaryCareSmokingStatus
Parent: http://hl7.org.au/fhir/StructureDefinition/au-smokingstatus
Id: AUPrimaryCareSmokingStatus
Title: "AU Primary Care Smoking Status"
Description: """
Statement about current behaviour for all types of tobacco smoking.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* value[x] 1..1 MS


Profile: AUPrimaryCareTobaccoSmokingSummary
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingSummary
Title: "AU Primary Tobacco Smoking Summary"
Description: """
Narrative description about all forms of tobacco smoking.

**Usage** 

It is possible to incorporate the narrative descriptions of tobacco smoking within existing or legacy clinical systems into this data element.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingSummary"
* status 1..1 MS
* code = $SNOMED#229819007
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS


Profile: AUPrimaryCareTobaccoSmokingDateCeased
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingDateCeased
Title: "AU Primary Care Tobacco Smoking Date Ceased"
Description: """
The date when the individual last ceased smoking tobacco of any type.

**Usage** 

The definition of smoking cessation is not universally clear, obviously involving abstinence from tobacco smoking for various periods of time, often varying between 28 days and 12 months. At any time, especially within the first 12 months, there is a possibility of relapse and the quit date will need to be removed and the item updated.

Partial dates are permitted.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingDateCeased"
* status 1..1 MS
* code = $SNOMED#160625004
// $LOINC#74010-0
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueDateTime 1..1 MS

Profile: AUPrimaryCareTobaccoSmokingDateStarted
Parent: Observation
Id: AUPrimaryCareTobaccoSmokingdDateStarted
Title: "AU Primary Tobacco Smoking Date Started"
Description: """
The date when the individual first started regular, but usually non-daily, smoking of tobacco of any type.

**Usage** 

Use to record when the individual started smoking on a regular basis, such as every Friday night or at parties.

Record as a single instance in a health record.

Partial dates are permitted
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoSmokingDateStarted"
* status 1..1 MS
* code = ObservationCode#smoking-date-started
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueDateTime 1..1 MS


Profile: AUPrimaryCareTobaccoPatternOfUse
Parent: Observation
Id: AUPrimaryCareTobaccoPatternOfUse
Title: "AU Primary Tobacco Smoking Pattern Of Use"
Description: """
Details about smoking activity for a specified type of smoked tobacco.

**Usage** 

Record a single instance per type of tobacco smoked in a health record; updated over time as a new version of the entire summary
Includes:
* Type - Record a single instance per type of tobacco smoked in a health record; updated over time as a new version of the entire summary
* Typical Use (Units) - Estimate of number of units of the specified type of tobacco smoked.
* Typical Use (Mass) - Estimate of the weight of loose leaf tobacco smoked.
* Pattern - The typical pattern of smoking for the specified type of tobacco.
* Number of Quit Attempts - Total number of times the individual has attempted to stop smoking the specified type of tobacco.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareTobaccoPatternOfUse"
* status 1..1 MS
* code = $SNOMED#266918002
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component contains smokingtype 0..1
* component[smokingtype].code =  http://aehrc.com/fhir/observable-entity#smoking-type
* component[smokingtype].valueCodeableConcept from SmokingType_Code_ValueSet
* component[smokingtype].valueCodeableConcept MS
* component contains unitofuse 0..1
* component[unitofuse].code =  http://aehrc.com/fhir/observable-entity#smoking-units-of-use
* component[unitofuse].valueQuantity.code from SmokingUseUnits_Code_ValueSet
* component[unitofuse].valueQuantity MS
* component contains dailyuse 0..1
* component[dailyuse].code =  http://aehrc.com/fhir/observable-entity#smoking-pattern-of-daily-use
* component[dailyuse].valueCodeableConcept from SmokingPattern_Code_ValueSet
* component[dailyuse].valueCodeableConcept MS
* component contains cessationattempts 0..1
* component[cessationattempts].code =  http://aehrc.com/fhir/observable-entity#smoking-cessation-attempts
* component[cessationattempts].valueQuantity MS
* component[cessationattempts].valueQuantity.code = #1


Profile: AUPrimaryCareOverallPackYears
Parent: Observation
Id: AUPrimaryCareOverallPackYears
Title: "AU Primary Tobacco Smoking Overall Pack Years"
Description: """
Total number of times the individual has attempted to stop smoking the specified type of tobacco.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareOverallPackYears"
* status 1..1 MS
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains tobaccooverallpackyears 1..1
* code.coding[tobaccooverallpackyears] = $SNOMED#401201003
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueQuantity MS
* valueQuantity.code = #{PackYears}

Profile: AUPrimaryCareAlcoholStatus
Parent: Observation
Id: AUPrimaryCareAlcoholStatus
Title: "AU Primary Care Alcohol Status"
Description: """
Statement about current consumption habits for all types of alcohol.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholStatus"
* status 1..1 MS
* code = $SNOMED#160573003
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* value[x] only CodeableConcept
* value[x] from AlcoholIntake_Code_Valueset
* value[x] 1..1 MS

Profile: AUPrimaryAlcoholConsumptionSummary
Parent: Observation
Id: AUPrimaryCareAlcoholConsumptionSummary
Title: "AU Primary Care Alcohol Consumption Summary"
Description: """
Narrative description about all forms of alcohol consumption.

**Usage** 

It is possible to incorporate the narrative descriptions of alcohol consumption within existing or legacy clinical systems into this data element.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholConsumptionSummary"
* status 1..1 MS
* code = $SNOMED#160573003
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS

Profile: AUPrimaryCareAlcoholPatternOfUse
Parent: Observation
Id: AUPrimaryCareAlcoholPatternOfUse
Title: "AU Primary Care Alcohol Pattern Of Use"
Description: """
Details about a discrete period of time with a consistent pattern of typical consumption.

**Usage** 
This includes:
* Episode Label - Identification of an episode of alcohol consumption.
* Episode Period - Date when this episode ocurred.
* Pattern - The typical pattern of consumption of alcohol.
* Typical Consumption - Estimate of number of standard alcohol units consumed in the specified time period
* Alcohol Free Days - The number of days where no alcohol was consumed during the specified interval.
* Binge Drinking Frequency - The individual's typical frequency of heavy drinking over a short period of time with the intent of becoming intoxicated.
* Binge Drinking Description - Narrative description about the individual's typical pattern of binge drinking.
* Number Quit Attempts - Total number of times the individual has attempted to stop consuming alcohol within this episode.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholPatternOfUse"
* status 1..1 MS
* code = $SNOMED#228308009
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component contains episodename 0..1
* component[episodename].code =  http://aehrc.com/fhir/observable-entity#alcohol-episode-name
* component[episodename].valueCodeableConcept MS
* component contains periodofuse 0..1
* component[periodofuse].code =  http://aehrc.com/fhir/observable-entity#alcohol-period-of-use
* component[periodofuse].valuePeriod MS
* component contains patternofuse 0..1
* component[patternofuse].code =  http://aehrc.com/fhir/observable-entity#alcohol-pattern-of-use
* component[patternofuse].valueCodeableConcept from AlcoholPattern_Code_ValueSet
* component[patternofuse].valueCodeableConcept MS
* component contains unitofuse 0..1
* component[unitofuse].code =  http://aehrc.com/fhir/observable-entity#alcohol-units-of-use
* component[unitofuse].valueQuantity.code from AlcoholPatternUnits_Code_ValueSet
* component[unitofuse].valueQuantity MS
* component contains alcoholfreedays 0..1
* component[alcoholfreedays].code =  http://aehrc.com/fhir/observable-entity#alcohol-free-days
* component[alcoholfreedays].valueQuantity.code from AlcoholFreeDaysUnits_Code_ValueSet
* component[alcoholfreedays].valueQuantity MS
* component contains bingedrinkingfrequency 0..1
* component[bingedrinkingfrequency].code =  http://aehrc.com/fhir/observable-entity#alcohol-binge-drinking-frequency
* component[bingedrinkingfrequency].valueQuantity.code from AlcoholFreeDaysUnits_Code_ValueSet
* component[bingedrinkingfrequency].valueQuantity MS
* component contains bingedringkingdescription 0..1
* component[bingedringkingdescription].code =  http://aehrc.com/fhir/observable-entity#alcohol-binge-drinking-description
* component[bingedringkingdescription].valueString MS
* component contains cessationattempts 0..1
* component[cessationattempts].code =  http://aehrc.com/fhir/observable-entity#alcohol-cessation-attempts
* component[cessationattempts].valueQuantity MS
* component[cessationattempts].valueQuantity.code = #1

Profile: AUPrimaryCareSocialSummary
Parent: Observation
Id: AUPrimaryCareSocialSummary
Title: "AU Primary Care Social Summary"
Description: """
Narrative description about social circumstances or experiences that may have a potential impact on an individual's health.

**Usage** 

It is possible to incorporate the narrative descriptions about social history-related information within existing or legacy clinical systems into this data element.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSocialSummary"
* status 1..1 MS
* code = $SNOMED#160476009
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS

Profile: AUPrimaryCareAlcoholConsumptionDateCeased
Parent: Observation
Id: AUPrimaryCareAlcoholConsumptionDateCeased
Title: "AU Primary Care Alcohol Consumption Date Ceased"
Description: """
The date when the individual last ceased consuming alcohol of any type.

**Usage** 

The definition of alcohol cessation is not universally clear, obviously involving abstinence from alcohol consumption for a period of time. At any time, especially within the first 12 months, there is a possibility of relapse and the quit date will need to be removed and the item updated.

Partial dates are permitted.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAlcoholConsumptionDateCeased"
* status 1..1 MS
* code = $SNOMED#1373041000168105
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueDateTime MS


Profile: AUPrimaryCareSubstanceUseSummary
Parent: Observation
Id: AUPrimaryCareSubstanceUseSummary
Title: "AU Primary Care Substance Use Summary"
Description: """
Summary or persistent information about the typical use of a non-prescribed substance or misuse of a prescribed substance by an individual.

**Usage**

Use to record summary information about the individual's typical pattern of substance use.

The scope of a substance in the context of this model is includes the administration or consumption of any psychoactive or biologically active substance (with the exception of tobacco and alcohol) used without a prescription or beyond its medical scope, intended purpose or dosage other than prescribed. The scope of this model does not differentiate between legal and illegal substances.

Record a single instance per substance, or class of substance, in a health record; updated over time as a new version.


**Misuse**

Not to be used to represent tobacco smoking or alcohol consumption - use specific Tobacco smoking and Alcohol consumption models for this purpose.

Not to be used to record event- or period-based information about substance use, such as actual daily use or the average use over a specified period of time, as required for a diary or questionnaire.

Not to be used to record prescribed substances such as medical marijuana. This should be recorded using Medication-related models.

For example: Recreational drugs, Solvents, Anabolic steroids, Opioid abuse,  Benzodiazepine abuse
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSubstanceUseSummary"
* status 1..1 MS
* code = ObservationCode#substance-use-summary
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component contains substancename 0..1
* component[substancename].code =  http://aehrc.com/fhir/observable-entity#substance-name
* component[substancename].valueCodeableConcept MS
* component contains status 0..1
* component[status].code =  http://aehrc.com/fhir/observable-entity#substance-use-status
* component[status].valueCodeableConcept from Substance_Use_Status_Code_ValueSet
* component[status].valueCodeableConcept MS
* component contains description 0..1
* component[description].code =  http://aehrc.com/fhir/observable-entity#substance-use-description
* component[description].valueString MS
* component contains lastquitdate 0..1
* component[lastquitdate].code =  http://aehrc.com/fhir/observable-entity#substance-use-last-quit-date
* component[lastquitdate].valueDateTime MS

Profile: AUPrimaryCarePhysicalActivitySummary
Parent: Observation
Id: AUPrimaryCarePhysicalActivitySummary
Title: "AU Primary Care Physical Activity Summary"
Description: """
Summary or persistent record of the typical level of physical activity undertaken by the individual.

**Usage**

Use to record a summary of the typical exercise habits of an individual.

Record as a single instance in a health record; updated and revised over time as a new version.


**Misuse**

Not to be used to record a physical activity diary of specific activities.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePhysicalActivitySummary"
* status 1..1 MS
* code = ObservationCode#physical-activity-summary
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* valueString MS



Profile: AUPrimaryCareFoodNutritionSummary
Parent: Observation
Id: AUPrimaryCareFoodNutritionSummary
Title: "AU Primary Care Food Nutrition Summary"
Description: """
Summary or persistent record of the dietary habits, nutritional intake and eating patterns of the individual.

**Usage**

Summary or persistent record of the dietary habits, nutritional intake and eating patterns of the individual.


**Misuse**

Not to be used to record a food diary.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFoodNutritionSummary"
* status 1..1 MS
* code = ObservationCode#food-nutrition-summary
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* effective[x] 1..1 MS
* effectiveDateTime MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component contains substancename 0..1
* component[substancename].code =  http://aehrc.com/fhir/observable-entity#food-nutrition-description
* component[substancename].valueString MS
* component contains status 0..1
* component[status].code =  http://aehrc.com/fhir/observable-entity#food-security-status
* component[status].valueCodeableConcept MS
* component contains description 0..1
* component[description].code =  http://aehrc.com/fhir/observable-entity#food-security-description
* component[description].valueString MS




