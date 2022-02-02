
Instance: aupc-procedureUltraSound
InstanceOf: Procedure //AUPrimaryCareProcedure-UltrasoundScanObstetric 
//BaseType: Procedure
Description: "Obstetric Ultrasound"
Title: "Obstetric Ultrasound"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Obstetric ultrasound</div>"

* subject = Reference(aupc-patient1)
* status = #completed
* code.coding.code = #268445003
* code.coding.system = $SNOMED

* performedDateTime = "2020-01-01"

