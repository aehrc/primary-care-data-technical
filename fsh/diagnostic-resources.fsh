Profile: AUPrimaryCareDiagnosticReport
Parent: http://hl7.org.au/fhir/StructureDefinition/au-diagnosticreport
Id: AUPrimaryCareDiagnosticReport
Title: "Primary Care Diagnostic Report"
Description: """
Basic diagnostic report 
"""
* text 1..1 MS
* status 1..1 MS
* code 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject MS
* effective[x] 1..1 MS
* presentedForm MS
