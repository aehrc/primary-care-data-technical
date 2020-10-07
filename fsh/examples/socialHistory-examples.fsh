

Instance: aupc-smoker1
InstanceOf: Observation
//BaseType: Observation
Description: "is a cigarette smoker"
Title: "Cigarette smoker"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Cigarette smoker</div>"

* status = #final
* subject = Reference(aupc-patient1)
* effectiveDateTime = "2020-04-01"
* code.coding = $SNOMED#229819007  "Tobacco smoking status"
* valueCodeableConcept = $LOINC#77176002 "Smoker, current status unknown"

