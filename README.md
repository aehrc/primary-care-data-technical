# Australian Primary Care Practice-to-Practice Record Transfer IG

This project contains all the files necessary to generate the Implementation Guide (IG) for the primary care data technical project. 

The IG publisher is used to build the IG and you can obatain the latest copy here https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar

You should specify the terminology server using the -tx option. https://primarycare.ontoserver.csiro.au/fhir has all the referenced ValueSets and CodeSystems referred to by the IG.

Example usage:

java -jar org.hl7.fhir.publisher.ontoserver.jar -ig <directory containging ig.json control file>/ig.json" -tx https://primarycare.ontoserver.csiro.au/fhir


