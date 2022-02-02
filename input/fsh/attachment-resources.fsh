Profile: AUPrimaryCareAttachment
Parent: DocumentReference
Id: AUPrimaryCareAttachment
Title: "AU Primary Care Attachment"
Description: """
Document content as an attachment. This includes the binary content of the document as part of the entry.

**Usage**

Used to attach any relevant documents to the summary including their full content.
"""
* ^url = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAttachment"
* meta.lastUpdated MS
* status MS
* docStatus 1..1 MS
* type 1..1 MS
* type.text 1..1 MS
* subject only Reference(AUPrimaryCarePatient)
* subject 1..1 MS
* date 1..1 MS
* description MS
* content.attachment 1..1 MS
* content.attachment.contentType 1..1 MS
* content.attachment.data 1..1 MS