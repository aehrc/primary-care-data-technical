// VALUE SETS 

ValueSet: Course_ValueSet
Id: course
Title: "Course ValueSet"
Description: "The valueset of options to represent clincial course of a condition"
* ^url = "http://aehrc.com/ValueSet/course"
* codes from system http://snomed.info/sct where constraint = "<<288524001 OR << 424124008"

ValueSet: ExpectedDateOfDeliveryTypes
Id: expecteddateofdeliverytypes
Title: "Expected Date Of Delivery Types"
Description: "Expected Date of Delivery observables, e.g. calculated from either scan date or last normal menstrual period and cycle length."
* ^url = "http://aehrc.com/ValueSet/expecteddateofdeliverytypes"
* codes from system http://snomed.info/sct where concept is-a #161714006

ValueSet: Genetic_Family_Member_ValueSet
Id: geneticfamilymember
Title: "Genetic Family Member ValueSet"
Description: "Members of a family from a genetic perspective"
* ^url = "http://aehrc.com/ValueSet/geneticfamilymember"
* codes from system http://snomed.info/sct where constraint = "< 444148008"

ValueSet: Condition_Code_Valueset
Id: conditioncode
Title: "Condition Code Valueset"
Description: "Condition coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/conditoncode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1
* http://snomed.info/sct#160245001 "No current problems or disability"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Procedure_Code_Valueset
Id: procedurecode
Title: "Procedure Code Valueset"
Description: "Procedure coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/procedurecode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/procedure-1
* http://snomed.info/sct#416128008 "No H/O: procedure"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Medication_Code_Valueset
Id: medicationcode
Title: "Medication Code Valueset"
Description: "Medication coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/medicationcode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1
* http://snomed.info/sct#1234391000168107 "No known current medicines"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Allergy_Code_Valueset
Id: allergycode
Title: "Allergy Code Valueset"
Description: "Allergy coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/allergycode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-1
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Vaccination_Code_Valueset
Id: vaccinationcode
Title: "Vaccination Code Valueset"
Description: "Vaccination coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/allergycode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-1
* http://snomed.info/sct#1234401000168109 "No H/O: vaccination"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"


/*
ValueSet: TobaccoPatternOfUse_Code_Valueset
Id: tobaccopatternofuse
Title: "Tobacco Pattern Of Use Code Valueset"
Description: "Vaccination coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/tobaccopatternofuse"
* http://snomed.info/sct#266918002 "Tobacco smoking consumption"
* http://snomed.info/sct#230057008 "Cigar consumption"
* http://snomed.info/sct#230056004 "Cigarette consumption"
* http://snomed.info/sct#230058003 "Pipe tobacco consumption"
*/


ValueSet: Family_History_Absent_Code_Valueset
Id: familyhistoryabsentcode
Title: "Family History Absent Code Valueset"
Description: "Family History coding for absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/familyhistoryabsentcode"
* http://snomed.info/sct#407559004 "Family history unknown"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"


ValueSet: Clinical_Indication_For_Medication_ValueSet
Id: clinical-indication-for-medication
Title: "Clinical Indication For Medication ValueSet"
Description: "Clinical Indication For Medication ValueSet"
* ^url = "http://aehrc.com/ValueSet/clinical-indication-for-medication"
* codes from system http://snomed.info/sct where constraint = "(<< 182929008|Drug prophylaxis| OR 169443000|Preventive procedure| OR ^ 32570581000036105|Problem/Diagnosis reference set|)"

ValueSet: AlcoholIntake_Code_Valueset
Id: alcoholintakecode
Title: "Alcohol Intake Code Valueset"
Description: "Procedure coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/ValueSet/alcoholintakecode"
* http://snomed.info/sct#783261004 "Lifetime non-drinker of alcohol"
* http://snomed.info/sct#82581004 "Former drinker" 
* http://snomed.info/sct#219006 "Current drinker" 


ValueSet: Breastfeeding_Code_Valueset
Id: breastfeedingcode
Title: "Breastfeeding Code Valueset"
Description: "Breastfeeding status record"
* ^url = "http://aehrc.com/ValueSet/breastfeedingcode"
* http://snomed.info/sct#169745008 "Breastfeeding started"
* http://snomed.info/sct#169746009 "Breastfeeding stopped"
* http://snomed.info/sct#733896006 "Breastfed and bottle fed"
* http://snomed.info/sct#169644004 "Intends to bottle feed" 
* http://snomed.info/sct#169643005 "Intends to breastfeed" 
* http://snomed.info/sct#169642000 "Feeding intention - unsure" 

ValueSet: AlcoholPatternUnits_Code_ValueSet
Id: alcoholunitscode
Title: "Alcohol Use Units"
* ^url = "http://aehrc.com/ValueSet/alcoholunitscode"
* http://unitsofmeasure.org#/wk "per week" 
* http://unitsofmeasure.org#/mo "per month"

ValueSet: AlcoholFreeDaysUnits_Code_ValueSet
Id: alcoholfreedaysunitscode
Title: "Alcohol Fee Days Use Units"
* ^url = "http://aehrc.com/ValueSet/alcoholfreedaysunitscode"
* http://unitsofmeasure.org#d/wk "days per week"
* http://unitsofmeasure.org#d/mo "days per month" 


ValueSet: AlcoholPattern_Code_ValueSet
Id: alcoholpatterncode
Title: "Alcohol Pattern"
* ^url = "http://aehrc.com/ValueSet/alcoholpatterncode"
* http://snomed.info/sct#228319007 "Daily drinker"
* http://snomed.info/sct#228276006 "Occasional drinker"

ValueSet: SmokingUseUnits_Code_ValueSet
Id: smokingusunitscode
Title: "Smoking Use Units"
* ^url = "http://aehrc.com/ValueSet/smokingunitscode"
* http://unitsofmeasure.org#g/d "gram per day"
* http://unitsofmeasure.org#g/wk "(gram) / (week)"
* http://unitsofmeasure.org#/d "per day"
* http://unitsofmeasure.org#/wk "per week"
* http://unitsofmeasure.org#/mo "per month"

ValueSet: SmokingPattern_Code_ValueSet
Id: smokingpatterncode
Title: "Smoking Pattern"
* ^url = "http://aehrc.com/ValueSet/smokingpatterncode"
* http://snomed.info/sct#449868002 "Smokes tobacco daily"
* http://snomed.info/sct#230059006 "Occasional cigarette smoker"


ValueSet: SmokingType_Code_ValueSet
Id: smokingtypecode
Title: "Smoking Type"
* ^url = "http://aehrc.com/ValueSet/smokingtypecode"
* http://snomed.info/sct#59978006 "Cigar Smoker"
* http://snomed.info/sct#65568007 "Cigarette Smoker"
* http://snomed.info/sct#82302008 "Pipe Smoker"


ValueSet: Gender_Code_ValueSet
Id: gendercode
Title: "Gender Type"
* ^url = "http://aehrc.com/ValueSet/gendercode"
* http://snomed.info/sct#703117000 "Male"
* http://snomed.info/sct#703118005 "Female"
* http://snomed.info/sct#772004004 "Non-binary"


ValueSet: Substance_Use_Status_Code_ValueSet
Id: substanceusestatuscode
Title: "Substance Use Status"
* ^url = "http://aehrc.com/ValueSet/substanceusestatuscode"
* http://snomed.info/sct#417284009 "Current drug user"
* http://snomed.info/sct#44870007 "Former drug user"


CodeSystem: ObservationCode
Id: observationcode
Title: "Observation Code"
* ^url = "http://aehrc.com/fhir/observable-entity"
* #absolute-cvd-risk "Absolute CVD risk" "Australian absolute CVD calculated risk score"
* #smoking-date-started "Date started smoking" "Date that smoking was started"
* #substance-use-summary "Substance use summary" "Details of substance use levels and types"
* #physical-activity-summary "Physical activity summary" "Details of physical activity levels and types"
* #food-nutrition-summary "Food nurition summary" "Food nutrition details including food security"
* #food-nutrition-description "Food nutrition description" "Food nutrition description"
* #food-security=status "Food security status" "Food security status"
* #food-security-description "Food security description" "Food security description"
