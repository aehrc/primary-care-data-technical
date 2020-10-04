// VALUE SETS 

ValueSet: Course_ValueSet
Id: course
Title: "Course ValueSet"
Description: "The valueset of options to represent clincial course of a condition"
* ^url = "http://aehrc.com/valueset/course"
* codes from system http://snomed.info/sct where constraint = "<<288524001 OR << 424124008"

ValueSet: ExpectedDateOfDeliveryTypes
Id: expecteddateofdeliverytypes
Title: "Expected Date Of Delivery Types"
Description: "Expected Date of Delivery observables, e.g. calculated from either scan date or last normal menstrual period and cycle length."
* ^url = "http://aehrc.com/valueset/expecteddateofdeliverytypes"
* codes from system http://snomed.info/sct where concept is-a #161714006

ValueSet: Genetic_Family_Member_ValueSet
Id: geneticfamilymember
Title: "Genetic Family Member ValueSet"
Description: "Members of a family from a genetic perspective"
* ^url = "http://aehrc.com/valueset/geneticfamilymember"
* codes from system http://snomed.info/sct where constraint = "< 444148008"

ValueSet: Condition_Code_Valueset
Id: conditioncode
Title: "Condition Code Valueset"
Description: "Condition coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/conditoncode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1
* http://snomed.info/sct#443508001 "No H/O: clinical finding in subject"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Procedure_Code_Valueset
Id: procedurecode
Title: "Procedure Code Valueset"
Description: "Procedure coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/procedurecode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/procedure-1
* http://snomed.info/sct#416128008 "No H/O: procedure"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"


ValueSet: Allergy_Code_Valueset
Id: allergycode
Title: "Allergy Code Valueset"
Description: "Allergy coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/allergycode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-1
* http://snomed.info/sct#1224831000168103 "No relevant medical history"

ValueSet: Vaccination_Code_Valueset
Id: vaccinationcode
Title: "Vaccination Code Valueset"
Description: "Vaccination coding including absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/allergycode"
* codes from valueset https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-1
* http://snomed.info/sct#1234401000168109 "No H/O: vaccination"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"


ValueSet: Family_History_Absent_Code_Valueset
Id: familyhistoryabsentcode
Title: "Family History Absent Code Valueset"
Description: "Family History coding for absence and exclusion; references relevant NCTS Assertion of Absence codes."
* ^url = "http://aehrc.com/valueset/familyhistoryabsentcode"
* http://snomed.info/sct#407559004 "Family history unknown"
* http://snomed.info/sct#1224831000168103 "No relevant medical history"


ValueSet: Clinical_Indication_For_Medication_ValueSet
Id: clinical-indication-for-medication
Title: "Clinical Indication For Medication ValueSet"
Description: "Clinical Indication For Medication ValueSet"
* ^url = "http://aehrc.com/valueset/clinical-indication-for-medication"
* codes from system http://snomed.info/sct where constraint = "(<< 182929008|Drug prophylaxis| OR 169443000|Preventive procedure| OR ^ 32570581000036105|Problem/Diagnosis reference set|)"

