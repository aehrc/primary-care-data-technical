// PROFILES 

Profile: AUPrimaryCareCondition
Parent: http://hl7.org.au/fhir/StructureDefinition/au-condition
Id: AUPrimaryCareCondition
Title: "AU Primary Care Condition"
Description: """
Details about a single identified health condition, injury, disability or any other issue which impacts on the physical, mental and/or social well-being of an individual.

**Usage**


* Use to record details about a single, identified health problem or diagnosis.
* Clear delineation between the scope of a problem versus a diagnosis is often not easy to achieve in practice. For the purposes of clinical documentation using this item, problem and diagnosis are regarded as a continuum, with increasing information and reaching or exceeding diagnostic criteria supporting formalisation of the label of 'diagnosis'. It is not necessary to classify the condition as a 'problem' or 'diagnosis', especially as a problem may evolve into a formal diagnosis as evidence is gathered. The data requirements to support documentation of either are identical, with additional data structure required to support inclusion of the evidence if and when it becomes available. In practice, most problems or diagnoses do not sit at either end of the problem-diagnosis spectrum, but somewhere in between.

**Misuse**

* Not to be used to describe reasons for encounter - use the 'Reason for encounter' item.
* Not to be used to describe procedures - use the 'Procedure' item.
* Not to be used to describe adverse reactions - use the 'Adverse reaction' item.
* Not to be used to describe symptoms, examination findings, diagnostic test results or health risk assessments.
* Not to be used to describe differential diagnoses.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition"
* meta.lastUpdated MS
* subject only Reference(AUPrimaryCarePatient)