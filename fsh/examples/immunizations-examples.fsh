//Immunization examples and a List pointing to them all

Instance: aupc-immunization1
InstanceOf: AUPrimaryCareImmunisation
//BaseType: Immunization
Description: "MMR"
Title: "MMR Vaccination"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MMR</div>"

* status = #completed
//todo - get amt code
* vaccineCode.coding = $SNOMED#396429000 "MMR vaccine"
* occurrenceDateTime = "2020-01-01"
* patient = Reference(aupc-patient1)

Instance: aupc-immunization2
InstanceOf: AUPrimaryCareImmunisation
//BaseType: Immunization
Description: "MMR"
Title: "MMR Vaccination"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>MMR</div>"

* status = #completed
//todo - get amt code
* vaccineCode.coding = $SNOMED#396429000 "MMR vaccine"
* occurrenceDateTime = "2020-02-10"
* patient = Reference(aupc-patient1)


Instance: aupc-immunization3
InstanceOf: http://hl7.org.au/fhir/StructureDefinition/au-immunization //AUPrimaryCareImmunisation
//BaseType: Immunization
Description: "Hepatitis "
Title: "Hepatitis"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hepatitis</div>"

* status = #completed
//todo - get amt code
* primarySource = true
* lotNumber = "EE3F243E"

* performer[administeredBy].function = http://terminology.hl7.org/CodeSystem/v2-0443#AP "Administering Provider"* performer[administeredBy].function.text = "Administering Provider" 
* performer[administeredBy].actor = Reference(aupc-practitioner1)


/*
todo - generating a sushi error

* performer.function = http://terminology.hl7.org/CodeSystem/v2-0443#AP "Administering Provider"
* performer.actor = Reference(aupc-practitioner1)

* performer[1].function = http://terminology.hl7.org/CodeSystem/v2-0443#OP "Ordering Provider"
* performer[1].actor = Reference(aupc-practitioner1)

*/

* vaccineCode.coding = $SNOMED#396429000 "MMR vaccine"
* occurrenceDateTime = "2020-02-10"
* patient = Reference(aupc-patient1)
* note.text = "Off to China for 3 weeks."

//The list that references all of the immunization resources 
Instance: aupc-immunizationList
InstanceOf: AUPrimaryCareImmunisationList
//BaseType: List 
Title: "Immunizations list"
Usage: #example

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>3 allergies</div>"

* mode = #snapshot
* status = #current
* subject = Reference(aupc-patient1)
* entry.item = Reference(aupc-immunization1)
* entry[1].item = Reference(aupc-immunization2)
* entry[2].item = Reference(aupc-immunization3)