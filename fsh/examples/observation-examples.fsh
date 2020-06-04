

Instance: aupc-gravidity1
InstanceOf: AUPrimaryCareGravidity 
//BaseType: Observation
Description: "Gravidity"
Title: "Gravidity"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Gravidity</div>"


* code.coding.system = $SNOMED
* code.coding.code = #161732006 
* code.coding.display = "Gravidity"
* subject = Reference(aupc-patient1)
* valueInteger = 3

Instance: aupc-parity1
InstanceOf: AUPrimaryCareParity 
//BaseType: Observation
Description: "Parity"
Title: "Parity"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Parity </div>"


* code.coding.system = $SNOMED
* code.coding.code = #364325004 
* code.coding.display = "Parity"
* subject = Reference(aupc-patient1)
* valueInteger = 3


Instance: aupc-gestationOnScan1
InstanceOf: AUPrimaryCareObservation-GestationOnScan
//BaseType: Observation
Description: "Gestation on scan"
Title: "Gestation on scan "

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Gestation on scan </div>"
* subject = Reference(aupc-patient1)

* partOf[ultrasoundScan] = Reference(aupc-procedureUltraSound)
//* partOf[ultrasoundScan] = Reference(aupc-edd1)
//* partOf[ultrasoundScan] = Reference(aupc-patient1)

* code.coding.system = $SNOMED
* code.coding.code = #57036006 
* code.coding.display = "Gestation on scan"
* subject = Reference(aupc-patient1)
* valueQuantity.value = 30
* valueQuantity.unit = "weeks"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #wk

* effectiveDateTime = "2020-04-01"  //date performed todo - in theory could get from proceduer


Instance: aupc-edd1
InstanceOf: AUPrimaryCareObservation-EDD
//BaseType: Observation
Description: "Estimated Date of Delivery"
Title: "Estimated Date of Delivery"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Estimated Date of Delivery</div>"
* subject = Reference(aupc-patient1)


//* code.coding[sliceCoding] = $SNOMED#366322004 "Finding of estimated date of delivery (finding)"
* code.coding = $SNOMED#366322004 "Finding of estimated date of delivery (finding)"
//* code.coding.system = $SNOMED
//* code.coding.code = #366322004 
//* code.coding.display = "Finding of estimated date of delivery (finding)"

* subject = Reference(aupc-patient1)
* valueDateTime = "2020-10-01"
* effectiveDateTime = "2020-04-01"



Instance: aupc-lmp1
InstanceOf: AUPrimaryCareObservation-LNMP
//BaseType: Observation
Description: "Last Menstrual Period"
Title: "Last Menstrual Period"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Last Menstrual Period</div>"
* subject = Reference(aupc-patient1)


* code.coding = $SNOMED#248993009  "Finding of estimated date of delivery (finding)"
//* code.coding.code = #366322004 
//* code.coding.display = "Finding of estimated date of delivery (finding)"

* subject = Reference(aupc-patient1)
* valueDateTime = "2019-10-01"
* effectiveDateTime = "2020-04-01"

//smoker


	

