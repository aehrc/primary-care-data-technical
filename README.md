# Primary care summary

Specifies the structure of a FHIR document to exchange a clinical summary for a patient between primary care practices

## Build process


### Prerequisites
* FHIR shirtand compiler (sushi) and the IG publisher installed locally as described in the [FSH spec](http://hl7.org/fhir/uv/shorthand/2020May/sushi.html#new-ig-publisher-integration-autobuild-configuration)
* This repository cloned locally
* You know enough about FHIR and FSH to make sensible changes

### Build
1. Edit the FSH files that define the FHIR artifacts (in the fsh folder)
2. Edit any page information (in FSH/input/pagecontent)
3. Execute the 'runSushi.sh' script in the root. Resolve any errors. 
4. Execute the 'build.sh' script in the root. 
5. Resolve build errors (load the output/qa.html file to see them)

#### Notes
* The shell scripts are for a *nix system. 
* At the time of writing, the build.sh script excludes the terminology test. There's a commented out line that will run with terminology support.
* The 'runSushi' script also executes a local javascript script that does a couple of things:
    * It creates a file - examples.md - that has a list of all examples ordered by the profile
    * It creates a Bundle resource for each Composition (found in the examples\composition folder) that contains all the resource instances references by the Composition. Each bundle is added to the examples.md file using a format that allows easy navigation within the bundle.


## Folder structure

### fsh			
The root for FSH files. The name is required for integration with IG builder. The profiles are directly within this folder. Each file can have multiple profiles, commonly the List resource for a given type and the profile on the type itself.

The *config.yaml* file is the primary configuration file. Sushi will copy content from here to the other files that are required by the IG builder.

### fsh/examples
The examples folder. There is a separate folder (fsh/examples/composition) for document examples

### fsh/ig-data/input
Files that are used in the IG. Most are in the pagecontent subfolder

