# run the ig builder...

# Version of the published that disables terminology checking
JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig . -tx n/a

# Version of the published that includes terminology checking
# JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig . 
