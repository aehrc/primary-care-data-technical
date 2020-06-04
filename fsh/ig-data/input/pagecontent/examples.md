
### [aupc-compositionComplete](Composition-aupc-compositionComplete.json.html) [(Document bundle)](Bundle-aupc-compositionComplete.json.html)
*Allergies only*

|  | Section | Section references | List references
| --- | --- | --- | --- |
| Subject:[John Doe](Patient-aupc-patient1.json.html) | | |
| Author: [Marcus Welby](Practitioner-aupc-practitioner1.json.html) | | |
| Sections:  | | |
| | Medical History
| | | [*List resource*](List-aupc-medicalHistoryList.json.html)
| | | | [Polio](Condition-aupc-condition1.json.html)
| | | | [Ashma](Condition-aupc-condition2.json.html)
| | | | [Stent, coronary artery](Procedure-aupc-procedure1.json.html)
| | | | [Plantar wart excision](Procedure-aupc-procedure2.json.html)
| | Adverse Reactions
| | | [*List resource*](List-aupc-adverseReactionList.json.html)
| | | | [Oesophagitis](AllergyIntolerance-aupc-allergy1.json.html)
| | | | [Peanut allergy](AllergyIntolerance-aupc-allergy2.json.html)
| | | | [Penicillin anaphylaxis](AllergyIntolerance-aupc-allergy3.json.html)
| | | | [Rash to alpha blockers](AllergyIntolerance-aupc-allergy4.json.html)
| | Immunization
| | | [*List resource*](List-aupc-immunizationList.json.html)
| | | | [MMR](Immunization-aupc-immunization1.json.html)
| | | | [MMR](Immunization-aupc-immunization2.json.html)
| | | | [Hepatitis](Immunization-aupc-immunization3.json.html)
| | Medicine list
| | | [*List resource*](List-aupc-medicineList.json.html)
| | | | [Simvastatin 10mg daily](MedicationStatement-aupc-medicationstatement1.json.html)
| | Family history list
| | | [*List resource*](List-aupc-familyHistoryList.json.html)
| | | | [Father with diabetes](FamilyMemberHistory-aupc-familyHistory1.json.html)
| | History of pregnancies
| | | [Gravidity](Observation-aupc-gravidity1.json.html)
| | | [Parity](Observation-aupc-parity1.json.html)
| | | [Gestation on scan](Observation-aupc-gestationOnScan1.json.html)
| | | [Estimated Date of Delivery](Observation-aupc-edd1.json.html)
| | | [Last Menstrual Period](Observation-aupc-lmp1.json.html)
| | Social History Narrative
| | | [*List resource*](List-aupc-socialHistoryList.json.html)
| | | | [Cigarette smoker](Observation-aupc-smoker1.json.html)
| | Follow ups
| | | [*List resource*](List-aupc-followUpList.json.html)
| | | | [](CarePlan-aupc-followup1.json.html)



### [aupc-compositionEmpty](Composition-aupc-compositionEmpty.json.html) [(Document bundle)](Bundle-aupc-compositionEmpty.json.html)
*No known data*

|  | Section | Section references | List references
| --- | --- | --- | --- |
| Subject:[undefined](Patient-aupc-patient1.json.html) | | |
| Author: [undefined](Practitioner-aupc-practitioner1.json.html) | | |
| Sections:  | | |
| | Medical History
| | | [*List resource*](List-aupc-medicalHistoryEmpty.json.html)
| | | Section is empty
| | Adverse Reactions
| | | [*List resource*](List-aupc-adverseReactionEmpty.json.html)
| | | Section is empty
| | Immunization
| | | [*List resource*](List-aupc-immunizationEmpty.json.html)
| | | Section is empty
| | Medication List
| | | [*List resource*](List-aupc-medicineListEmpty.json.html)
| | | Section is empty


### Examples by Type

| Type | Id | Title | Description |
| --- | --- | --- | --- |
| [AUPrimaryCareAllergyIntolerance](StructureDefinition-AUPrimaryCareAllergyIntolerance.html) | [aupc-allergy1](AllergyIntolerance-aupc-allergy1.json.html) | Oesophagitis caused by dairy food | Oesophagitis caused by dairy food |
|  | [aupc-allergy2](AllergyIntolerance-aupc-allergy2.json.html) | Peanut allergy | Urticaria as a result of a Peanut allergy |
|  | [aupc-allergy3](AllergyIntolerance-aupc-allergy3.json.html) | Penicillin anaphylaxis | Penicillin anaphylaxis |
|  | [aupc-allergy4](AllergyIntolerance-aupc-allergy4.json.html) | Alpha blocker rash | A rash as a consequence to Alpha adrenergic blockers |
| [AUPrimaryCareAllergyIntoleranceList](StructureDefinition-AUPrimaryCareAllergyIntoleranceList.html) | [aupc-adverseReactionList](List-aupc-adverseReactionList.json.html) | Allergy List |  |
|  | [aupc-adverseReactionEmpty](List-aupc-adverseReactionEmpty.json.html) | No significant history |  |
| [AUPrimaryCareComposition](StructureDefinition-AUPrimaryCareComposition.html) | [aupc-compositionComplete](AllergyIntolerance-aupc-compositionComplete.json.html) | Example composition with all sections populated |  |
|  | [aupc-compositionEmpty](Composition-aupc-compositionEmpty.json.html) | Example composition with no data |  |
| [AUPrimaryCareCondition](StructureDefinition-AUPrimaryCareCondition.html) | [aupc-condition1](Condition-aupc-condition1.json.html) | Conformed diagnosis of Polio | Polio |
|  | [aupc-condition2](Condition-aupc-condition2.json.html) | Conformed diagnosis of Asthma | Asthma |
| [AUPrimaryCareProcedure](StructureDefinition-AUPrimaryCareProcedure.html) | [aupc-procedure1](Procedure-aupc-procedure1.json.html) | Stent, coronary artery | Stent, coronary artery |
|  | [aupc-procedure2](Procedure-aupc-procedure2.json.html) | Plantar wart excision | Plantar wart excision |
| [AUPrimaryCareMedicalHistoryList](StructureDefinition-AUPrimaryCareMedicalHistoryList.html) | [aupc-medicalHistoryList](List-aupc-medicalHistoryList.json.html) | Medical History List |  |
|  | [aupc-medicalHistoryEmpty](List-aupc-medicalHistoryEmpty.json.html) | No significant history |  |
| [AUPrimaryCareFamilyMemberHistory](StructureDefinition-AUPrimaryCareFamilyMemberHistory.html) | [aupc-familyHistory1](FamilyMemberHistory-aupc-familyHistory1.json.html) | Father with diabetes | Father with diabetes |
| [AUPrimaryCareFamilyMemberHistoryList](StructureDefinition-AUPrimaryCareFamilyMemberHistoryList.html) | [aupc-familyHistoryList](List-aupc-familyHistoryList.json.html) | Family History List |  |
| [AUPrimaryCareFollowUp](StructureDefinition-AUPrimaryCareFollowUp.html) | [aupc-followup1](CarePlan-aupc-followup1.json.html) | Blood Pressure review | Review to check Blood Pressure |
| [AUPrimaryCareFollowUpList](StructureDefinition-AUPrimaryCareFollowUpList.html) | [aupc-followUpList](List-aupc-followUpList.json.html) | Followup list |  |
| [AUPrimaryCareImmunisation](StructureDefinition-AUPrimaryCareImmunisation.html) | [aupc-immunization1](Immunization-aupc-immunization1.json.html) | MMR Vaccination | MMR |
|  | [aupc-immunization2](Immunization-aupc-immunization2.json.html) | MMR Vaccination | MMR |
| [http://hl7.org.au/fhir/StructureDefinition/au-immunization //AUPrimaryCareImmunisation](StructureDefinition-http://hl7.org.au/fhir/StructureDefinition/au-immunization //AUPrimaryCareImmunisation.html) | [aupc-immunization3](Immunization-aupc-immunization3.json.html) | Hepatitis | Hepatitis  |
| [AUPrimaryCareImmunisationList](StructureDefinition-AUPrimaryCareImmunisationList.html) | [aupc-immunizationList](List-aupc-immunizationList.json.html) | Immunizations list |  |
|  | [aupc-immunizationEmpty](List-aupc-immunizationEmpty.json.html) | No significant history |  |
| [AUPrimaryCareMedicationStatement //MedicationStatement //](StructureDefinition-AUPrimaryCareMedicationStatement //MedicationStatement //.html) | [aupc-medicationstatement1](MedicationStatement-aupc-medicationstatement1.json.html) | Simvastatin | Simvastatin |
| [AUPrimaryCareMedication](StructureDefinition-AUPrimaryCareMedication.html) | [medication1](Medication-medication1.json.html) | Simvastatin | Simvastatin |
| [AUPrimaryCareMedicineList](StructureDefinition-AUPrimaryCareMedicineList.html) | [aupc-medicineList](List-aupc-medicineList.json.html) | No significant history |  |
|  | [aupc-medicineListEmpty](List-aupc-medicineListEmpty.json.html) | No significant history |  |
| [AUPrimaryCareGravidity ](StructureDefinition-AUPrimaryCareGravidity .html) | [aupc-gravidity1](Observation-aupc-gravidity1.json.html) | Gravidity | Gravidity |
| [AUPrimaryCareParity ](StructureDefinition-AUPrimaryCareParity .html) | [aupc-parity1](Observation-aupc-parity1.json.html) | Parity | Parity |
| [AUPrimaryCareObservation-GestationOnScan](StructureDefinition-AUPrimaryCareObservation-GestationOnScan.html) | [aupc-gestationOnScan1](Observation-aupc-gestationOnScan1.json.html) | Gestation on scan  | Gestation on scan |
| [AUPrimaryCareObservation-EDD](StructureDefinition-AUPrimaryCareObservation-EDD.html) | [aupc-edd1](Observation-aupc-edd1.json.html) | Estimated Date of Delivery | Estimated Date of Delivery |
| [AUPrimaryCareObservation-LNMP](StructureDefinition-AUPrimaryCareObservation-LNMP.html) | [aupc-lmp1](Observation-aupc-lmp1.json.html) | Last Menstrual Period | Last Menstrual Period |
| [Procedure //AUPrimaryCareProcedure-UltrasoundScanObstetric ](StructureDefinition-Procedure //AUPrimaryCareProcedure-UltrasoundScanObstetric .html) | [aupc-procedureUltraSound](Procedure-aupc-procedureUltraSound.json.html) | Obstetric Ultrasound | Obstetric Ultrasound |
| [Observation](StructureDefinition-Observation.html) | [aupc-smoker1](Observation-aupc-smoker1.json.html) | Cigarette smoker | is a cigarette smoker |
| [AUPrimaryCareSocialHistoryList](StructureDefinition-AUPrimaryCareSocialHistoryList.html) | [aupc-socialHistoryList](List-aupc-socialHistoryList.json.html) | Social History resources |  |
| [AUPrimaryCarePatient](StructureDefinition-AUPrimaryCarePatient.html) | [aupc-patient1](Patient-aupc-patient1.json.html) | Patient | Supporting patient for examples |
| [Practitioner](StructureDefinition-Practitioner.html) | [aupc-practitioner1](Practitioner-aupc-practitioner1.json.html) | Practitioner | Supporting practitioner for examples |