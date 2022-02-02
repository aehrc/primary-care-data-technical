// PROFILES 


//The list resource profiled to contain allergyIntolerance resources...
Profile: AUPrimaryCareAllergyIntoleranceList
Parent: List
Id: AUPrimaryCareAllergyIntoleranceList
Title: "AU Primary Care Allergy Intolerance List"
Description: "This profile defines an allergy intolerance list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntoleranceList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareAllergyIntolerance)
* entry.item MS
* emptyReason MS

/*
Profile: AUPrimaryCareAllergyIntolerance
Parent: http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance
Id: AUPrimaryCareAllergyIntolerance
* reaction.substance.coding[snomedSubstance] MS

*/

//The AllergyIntolerance resource. Note that this constrains the AU primary profile (http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-allergyintolerance.html)
Profile: AUPrimaryCareAllergyIntolerance
Parent: http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance
//BaseType: AllergyIntolerance
Id: AUPrimaryCareAllergyIntolerance
Title: "AU Primary Care Allergy Intolerance"
Description: """
Risk of harmful or undesirable physiological response which is unique to the individual and associated with exposure to a known substance.

**Usage**

Use to provide a single place within the health record to document a range of clinical statements about adverse reactions, including:
- record a clinical assessment of the individual’s propensity for a potential future reaction upon re-exposure; and
- record cumulative information about the reaction to each exposure.

Use to record information about the positive presence of the risk of an adverse reaction:
- to support direct clinical care of an individual;
- as part of a managed adverse reaction or allergy/intolerance list;
- to support exchange of information about the propensity and events related to adverse reactions;
- to inform adverse reaction reporting; and
- to assist computerised knowledge-based activities such as clinical decision support and alerts.

Use to record information about the risk of adverse reactions to a broad range of substances, including: incipients and excipients in medicinal preparations; biological products; metal salts; and organic chemical compounds.

Adverse reaction may be:
- an immune mediated reaction - Types I-IV (including allergic reactions and hypersensitivities); or
- a non-immune mediated reaction - including pseudo-allergic reactions, side effects, intolerances, drug toxicities (eg to Gentamicin).
In clinical practice distinguishing between immune-mediated and non-immune mediated reactions is difficult and often not practical. Identification of the type of reaction is not a proxy for seriousness or risk of harm to the patient, which is better expressed by the manifestation in clinical practice.

The risk of an adverse reaction event or manifestation should not be recorded without identifying a proposed causative substance or class of substance. If there is uncertainty that a specific substance is the cause, this uncertainty can be recorded using the ‘Verification status’ data element. If there are multiple possible substances that may have caused a reaction/manifestation, each substance should be recorded using a separate instance of this adverse reaction archetype with the ‘Status’ set to an initial state of ‘Unconfirmed’ so that adverse reaction checking can be activated in clinical systems. Once the substance, agent or class is later proven not to be the cause for a given reaction then the ‘Status’ can be modified to ‘Refuted’.

This item has been designed to allow recording of information about a specific substance (amoxycillin, oysters, or bee sting venom) or, alternatively, a class of substance (eg Penicillins). If a class of substance is recorded then identification of the exact substance can be recorded on a per exposure basis.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAllergyIntolerance"
* meta.lastUpdated MS
* verificationStatus MS
* criticality MS
* code 1..1
* code MS
* patient only Reference(https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient)
* recordedDate MS
* reaction 0..*
* reaction.substance 0..1 MS
* reaction.manifestation MS
* note.text MS

