
Profile: AUPrimaryCareGoal
Parent: Goal
Title: "AU Primary Care Goal"
Id: AUPrimaryCareGoal
Description: "Data group for the recording of goals"
* description 1..1 MS
* description.text 1..1 MS
* description.text ^short = "Goal Name"
* expressedBy 1..1
* expressedBy ^definition = "Element to state who has set the goal. For example the clinician or the patient"
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* note ^short = "Comment"
* note ^definition = "Text comment in relation to the recorded goal"
* target.detailString 1..1
* target ^definition = "Specify the details of what the target of this goal is."
* extension contains AUPrimaryCareReviewDate named reviewDate 0..*
* category ^definition =  "Element that describes what the goal relates to."
* outcomeCode.text ^definition = "Outcome of this goal once review period is finished"

Extension: AUPrimaryCareReviewDate
Id: AUPrimaryCareReviewDate
Title: "AU Primary Care Review Date"
Description: "Date when this goal is planned to be reviewed"
* . ^short = "Review Date"
* value[x] only date

Profile: AUPrimaryCareGoalList
Parent: List
Id: AUPrimaryCareGoalList
Title: "AU Primary Care Goal List"
Description: "This profile defines an goal list structure that includes core localisation concepts for use in an Australian primary care practice-to-practice record transfer context."
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareGoalList"
* status = #current
* mode = #snapshot
* entry.item only Reference(AUPrimaryCareGoal)
* entry.item MS
* emptyReason MS