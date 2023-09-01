Profile: AUPrimaryCareDiagnosticReport
Parent: http://hl7.org.au/fhir/core/StructureDefinition/au-core-diagnosticreport
Id: AUPrimaryCareDiagnosticReport
Title: "Primary Care Diagnostic Report"
Description: """
Basic diagnostic report 
"""
* text 1..1 MS
* subject only Reference(AUPrimaryCarePatient)

