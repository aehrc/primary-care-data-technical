

Instance: aupc-gravidity1
InstanceOf: AUPrimaryCareGravidity 
//BaseType: Observation
Description: "Gravidity"
Title: "Gravidity"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Gravidity</div>"

* status = #final
* code.coding.system = $SNOMED
* code.coding.code = #161732006
* subject = Reference(aupc-patient1)
* effectiveDateTime = "2020-03-01"
* valueQuantity = 3 '1'

Instance: aupc-parity1
InstanceOf: AUPrimaryCareParity 
//BaseType: Observation
Description: "Parity"
Title: "Parity"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Parity </div>"

* status = #final
* code.coding.system = $SNOMED
* code.coding.code = #364325004 
* code.coding.display = "Parity"
* subject = Reference(aupc-patient1)
* effectiveDateTime = "2020-03-01"
* valueQuantity = 3 '1'

Instance: aupc-gestationOnScan1
InstanceOf: AUPrimaryCareGestationalAge
//BaseType: Observation
Description: "Gestation on scan"
Title: "Gestation on scan "
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Gestation on scan </div>"
* subject = Reference(aupc-patient1)
* code.coding.system = $SNOMED
* code.coding.code = #57036006 
* code.coding.display = "Gestation on scan"
* subject = Reference(aupc-patient1)
* valueQuantity.value = 90
* valueQuantity.unit = "day"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #d

* effectiveDateTime = "2020-04-01"  //date performed todo - in theory could get from proceduer


Instance: aupc-edd1
InstanceOf: AUPrimaryCareEDD
//BaseType: Observation
Description: "Estimated Date of Delivery"
Title: "Estimated Date of Delivery"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Estimated Date of Delivery</div>"
* subject = Reference(aupc-patient1)
* code.coding = $SNOMED#161714006 "Estimated date of delivery"
* subject = Reference(aupc-patient1)
* valueDateTime = "2020-10-01"
* effectiveDateTime = "2020-04-01"


Instance: aupc-lmp1
InstanceOf: AUPrimaryCareLMP
//BaseType: Observation
Description: "Last Menstrual Period"
Title: "Last Menstrual Period"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Last Menstrual Period</div>"
* subject = Reference(aupc-patient1)
* code.coding = $SNOMED#248993009
* subject = Reference(aupc-patient1)
* valueDateTime = "2019-10-01"
* effectiveDateTime = "2020-04-01"



	

