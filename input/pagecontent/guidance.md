# {{ page.title }}

This guide is for practice-to-practice primary care patient record transfer.

## Definition of mustSupport

This Implementation Guide is a refinement of AU Base for the primary care context. An open modelling approach has been taken which means that in general, anything present in AU Base has not been forbidden except where absolutely necessary.

However, it is not the intention that every element in AU Base be supported by implementers and those elements that should be supported have been indicated with the use of the "mustSupport" flag.

It is the responsibility of an Implementation Guide that chooses to use the mustSupport flag to define the meaning of the flag within the Implementation Guide.

For this Implementation Guide, if the mustSupport flag is true for an element, receiving systems must expect that the element could be present in a resource, but it does not mandate the presence of that element. 

It has not yet been decided what the consequences are of sending a resource containing elements that do not have the mustSupport flag, however, implementers are cautioned against using these elements in case it is decided that a non-conforming resource be rejected.

While not explicitly flagged, the "text" field in a CodeableConcept are an implicit mustSupport fields to facilitate data transfer where codes cannot be transferred.


## Profile conformance

Adherence to the primary care IG profiles should be done via the resource.meta.profile element. For example:

	<Patient xmlns="http://hl7.org/fhir">
	  <id value="4E756D076EDCAF7552FFF6CF7B7BB2A1.20" />
		<meta>
			<versionId value="20180903231855" />
			<lastUpdated value="2018-09-03T23:18:55.597+00:00" />
			<profile value="https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient"/>
		</meta>
	...
	</Patient>

## Maturity Levels 
These levels used for this Implementation Guide are associated with the [FHIR Maturity Model](http://build.fhir.org/versions.html#maturity) and adjusted for local use.

The content of this release has been subject to significant review through ballot and other HL7 AU processes and many aspects of it have been implemented and 
subjected to interoperability testing through Connectathons and early adoption. However, the degree of testing has varied. Some resources have been well tested 
in a variety of environments. Others have received relatively little real-world exercise. In general, the infrastructure should be considered to be more stable 
than the resources themselves. Guidance from early implementation will help address these areas.

All artifacts in this specification are assigned a "Maturity Level", known as FMM (after the well known CMM  grades). The FMM level can be used by implementers to judge how advanced - and therefore stable - an artifact is. 
The following FMM levels are defined:

{:start="0"}
**FMM 0** The resource or profile (artifact) has been published on the current build. This level is synonymous with Draft.

**FMM 1** PLUS the artifact produces no warnings during the build process and the responsible WG has indicated that they consider the artifact substantially complete and ready for implementation. 

**FMM 2** PLUS the artifact has been tested and successfully exchanged between at least three independently developed systems leveraging at least 80% of the core data elements using semi-realistic data and scenarios based on at least one of the declared scopes of the resource (e.g. at a connectathon). These interoperability results must have been reported to and accepted by the responsible working group.

**FMM 3** PLUS the artifact has been verified by the work group as meeting the [Trial Use Quality Guidelines](http://wiki.hl7.org/index.php?title=DSTU_2_QA_guidelines) and has been subject to a round of formal balloting; has at least 10 implementer comments recorded in the tracker drawn from at least 3 organizations resulting in at least one substantive change

**FMM 4** PLUS the artifact is published in a formal publication (e.g. a FHIR Implementation Guide), and implemented in multiple prototype projects. As well, the responsible work group agrees the resource is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes.

**FMM 5** PLUS the artifact has been published in two formal publication release cycles at FMM1+ (i.e. Trial Use level) and has been implemented in at least 5 independent production systems.

Normative the artifact is now considered stable

Reference should also be made to [Version Management Policy](http://build.fhir.org/versions.html)