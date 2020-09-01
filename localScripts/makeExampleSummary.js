#!/usr/bin/env node
/*create an example page containing all the examples in the Guide

Iterate through all the examples to create a summary page - with a special format for documents.
The summary by base type uses the //BaseType entry that is in all instances as a comment.
The output is places in the pagecontent folder of both fsh and input so that it can be run
as part of the runSushi command ()

Uses fsh for the summary by type (baseType), actual generated instances for the Composition

*/
let fs = require('fs')
let examplePath =  './fsh/examples'

//where to write out the bundles (that represent the document examples). The IG publisher can pick them up from there
let arBundleOutputFolder = ['./input/examples/','./fsh/ig-data/input/examples/'];            //where to save a bundle

let outFileName = './fsh/ig-data/input/pagecontent/examples.md';
let outFileName2 = './input/pagecontent/examples.md';      //also put a copy directly in the IG input - otherwise have to run sushi again
let bundleServer = "http://clinfhir.com/fhir/";          //root for full url

let dataServer = "http://home.clinfhir.com:8054/baseR4/";   //upload Bundles to this server
let bvServer = "http://clinfhir.com/bundleVisualizer.html";        //the link to the Bundle Visualizer

let FhirExamplePath =  './input/examples/' //where the example FHIR instances are placed by sushi


//retrieve all the file names into a list
let results = walk(examplePath)
//console.log(results)

let hashExamples = {};      //hash by InstanceOf: contains [{id:, description:, title:, type:, fileName:, link:}] for each key

//process the files - build the hash hashExamples (a single file can have multiple instances in it). 
results.forEach(function(fullFileName) {
    let contents = fs.readFileSync(fullFileName).toString()
    processFile(contents,fullFileName)
})

//console.log(hashExamples)



//now iterate through hashExamples to build the summary by type
let arMD = []
arMD.push("### Examples by Type")
arMD.push("");
arMD.push("| Type | Id | Title | Description |")
arMD.push("| --- | --- | --- | --- |")


for (var key of Object.keys(hashExamples)) {        //key is the 'instanceOf'
    let ctr = 0;
    hashExamples[key].forEach(function(summary){    //multiple examples for each instance
        let linkId = summary.id
        if (summary.link) {
            linkId = "[" + summary.id + "](" + summary.link + ")"
        }

        //only display the key once...

        //let keyDisplay = key;
        let keyDisplay = "[" + key +"](StructureDefinition-" + key + ".html)"
        if (ctr > 0) {
            keyDisplay = ""
        }

        arMD.push("| " + keyDisplay + " | " + linkId + " | " + summary.title + " | " + summary.description + " |")
        ctr ++
    })
}

//now, build the Document based summary
//arMD.push("");
//arMD.push("");
//arMD.push("### Documents");


// -------------  now processing for compositions...



let hashResources = {};


//let bundle = {resourceType:"Bundle",entry:[]}
//build the hash of all FHIR exmple resources... - these are the actual rersource instances - not the shorthand
let list = fs.readdirSync(FhirExamplePath);
list.forEach(function(file) {
    if (file.indexOf('.json') > -1) {
        //console.log(file)
        let fullFileName = FhirExamplePath + file;
        let contents = fs.readFileSync(fullFileName).toString()

        let json = JSON.parse(contents,null,2)

        delete json.meta    //

        let ref = json.resourceType + "/" + json.id
        hashResources[ref] = json
        //bundle.entry.push({resource:json})
    }
    
   
})

//write out the cmplete bundle
//fs.writeFileSync("./bundle.json",JSON.stringify(bundle))

//look for compositions
let arALLCompositionMD = []
for (var key of Object.keys(hashResources)) {
    let resource = hashResources[key]
    //console.log(resource.resourceType)
    if (resource.resourceType == 'Composition') {
       // console.log(resource.id)
        //let ar = processComposition(resource)
       // console.log(ar)arMD.push("");
       arALLCompositionMD.push("");
       arALLCompositionMD = arALLCompositionMD.concat(processComposition(resource))
       arALLCompositionMD.push("");
       arALLCompositionMD.push("");
    }

}

//now assemble the page
let ar = arALLCompositionMD.concat(arMD)


let outContents = ar.join('\n')
//let outContents = arMD.join('\n')
fs.writeFileSync(outFileName,outContents)       //This is sushi ig-data
fs.writeFileSync(outFileName2,outContents)      //This is the IG input




    return

//process the composition resource
function processComposition(comp) {
    let arComposition = []
    let hashResourceInDoc = {};     //used to ensure no duplications in doc
    //the document bundle
    let bundle = {resourceType : "Bundle", id:comp.id, type: 'document', entry:[]}
    bundle.entry.push({resource:comp,fullUrl:bundleServer+comp.resourceType + "/" + comp.id})

    //a bundle must have a date and identifier
    
    bundle.identifier = comp.identifier;
    bundle.timestamp = new Date().toISOString();

    let compLink = "[" + comp.id +"](Composition-" + comp.id + ".json.html)"

    compLink += " [(View Document bundle)](Bundle-"+  comp.id + ".json.html)"

    arComposition.push("### " + compLink)
    let text = ""
    if (comp.text && comp.text.div) {
        text = "*" + getDivText(comp.text.div) + "*"
    }
    
    arComposition.push(text)
    arComposition.push("");

    //let bvUrl = "http://localhost:8081/bundleVisualizer.html?id=aupc-maryFictitious&server=http://home.clinfhir.com:8054/baseR4/"
    let bvUrl = bvServer + "?id=" + comp.id + "&server=" + dataServer
    

    let bvLink = "<a href='"+bvUrl+"' target='_blank'>View in clinFHIR Bundle Visualizer</a>";

    arComposition.push(bvLink)
    arComposition.push("");

    arComposition.push("|  | Section | Section references | List references | Text")
    arComposition.push("| --- | --- | --- | --- | --- |")

    //let lnk = comp.subject.reference.replace(
    let subjectLink = "[" + comp.subject.display +"](" + makeLinkFromReference(comp.subject.reference) + ".json.html)"
    arComposition.push("| Subject:"  +   subjectLink       + " | | |")

    //add the Patient resource to the bundle
    let patientResource = hashResources[comp.subject.reference]
    if (patientResource) {
        bundle.entry.push({resource:patientResource,fullUrl:bundleServer+patientResource.resourceType + "/" + patientResource.id})
    }

    comp.author.forEach(function(author){
        let authorLink = "[" + author.display +"](" + makeLinkFromReference(author.reference) + ".json.html)"
        arComposition.push("| Author: " + authorLink + " | | |")
        //now get the resource...
        let authorResource = hashResources[author.reference]
        if (authorResource) {
            bundle.entry.push({resource:authorResource,fullUrl:bundleServer+authorResource.resourceType + "/" + authorResource.id})
        }

    })

    arComposition.push("| Sections:  | | |")
    //add the sections
    comp.section.forEach(function(sect){
        let sectionDisplay=""       
        let sectionText = getDivText(sect.text.div);        //the section narrative

        //'cause there can be multiple codes in a section...
        sect.code.coding.forEach(function(coding){
            sectionDisplay += coding.display;
        })
        sectionDisplay = "**" + sectionDisplay + "**"

        //arComposition.push("| | " + sectionDisplay)      //the section header
        arComposition.push("| | " + sectionDisplay + " | | | " + sectionText + " |")      //the section header

        //now for the section contents
        

        

        if (sect.entry) {
            sect.entry.forEach(function(entry){     //generally only 1
                let resource = hashResources[entry.reference]
                if (resource && resource.resourceType == 'List') {

                    

                    //bundle.entry.push({resource:resource})
                    bundle.entry.push({resource:resource,fullUrl:bundleServer+resource.resourceType + "/" + resource.id})
                    let listLink = "[*List resource*](List-"+ resource.id +".json.html)"
                    arComposition.push("| | | " + listLink)      //the section header
                    //arComposition.push("| | | " + listLink + " | | " + sectionText + " |")      //the section header
                    //retrieve the contents of the list and display each on a line
                    if (resource.emptyReason) {
                        arComposition.push("| | | Section is empty")  
                    } else {

                        //iterate through the list contents
                        resource.entry.forEach(function(entry){
                            let entryResource = hashResources[entry.item.reference]

                            if (! entryResource) {
                                console.log('----------> ' + entry.item.reference + ": not found! (suggests the composition section is rerferencing an unknown resource")
                            }
                            
                        
                        //only add each resource once
                        let key = entryResource.type + "/" + entryResource.id
                        if (! hashResourceInDoc[key]) {
                                bundle.entry.push({resource:entryResource,fullUrl:bundleServer+entryResource.resourceType + "/" + entryResource.id})
                                hashResourceInDoc[key] = true;
                        }
                            
    /* - don't do this for examples - the section text should be in the example...
                            let text = ""

                            
                            if (entryResource.text) {
                                text = getDivText(entryResource.text.div)
                            
                                sectionText += "<li>" + text + "</li>"

                            }
                            */
                            let link = entryResource.resourceType + '-' + entryResource.id + '.json.html'
                            let display = "[" + text + "](" + link + ")"

                            arComposition.push("| | | | " + display) 
                        })
                    }
                    
                } else {
                    let text = getDivText(resource.text.div)
                    let link = resource.resourceType + '-' + resource.id + '.json.html'
                    let display = "[" + text + "](" + link + ")"

                    arComposition.push("| | | " + display)  
                    bundle.entry.push({resource:resource,fullUrl:bundleServer+resource.resourceType + "/" + resource.id})
                }
            })
    }

       




    })

    //write out the bundles...
    arBundleOutputFolder.forEach(function(folderName) {
        let bundleName = folderName + "Bundle-" + bundle.id + '.json';
        fs.writeFileSync(bundleName,JSON.stringify(bundle)) 
    })

    //if there's a dataserver, then save the Bundle to it. Only works from my machine (has the sync-request library)

    if (dataServer) {
        let url = dataServer + "Bundle/" + bundle.id;
        let syncRequest = require('../../scripts/node_modules/sync-request');

        let options = {};
        options.headers = {"content-type": "application/json+fhir"}
        options.body = JSON.stringify(bundle)
        options.timeout = 20000;        //20 seconds
        
        
        console.log(url)
        let response = syncRequest('PUT', url, options);
        console.log('Response to saving at ' + url + ": " + response.statusCode)

        if (response.statusCode !== 200 && response.statusCode !== 201) {
            console.log(response.body.toString())
        }




    }


    //console.log(bundle)

    return arComposition;


}

function makeLinkFromReference(ref) {
    let ar = ref.split('/')
    //console.log(ref,ar.join('-'))
    return ar.join('-')
}

function getDivText(text) {
    let g = text.indexOf('>')
    let g1 = text.indexOf("<",1)
    return text.substr(g+1,g1-g-1)
}





//get all the instance defintions in the file...
function processFile(contents,fullFileName) {
    let splitter = "Instance:"
    //let arResults = []
    let arInstances = contents.split(splitter);     //the instances defined in this file

    arInstances.forEach(function(i) {       //check each instance

        let fileContents = splitter + i     //add back in the splitter
        
        let summary = {description:"",title:""}
        let ar = fileContents.split('\n')
        ar.forEach(function(lne){
            lne = lne.replace(/['"]+/g, '');        //get rid of all the quotes
            if (lne.substr(0,11) == 'InstanceOf:') {
                summary.type = lne.substr(12)
            } else if (lne.substr(0,9) == 'Instance:') {
                summary.id = lne.substr(10)
            } else if (lne.substr(0,11) == '//BaseType:') {
                summary.baseType = lne.substr(12).trim();
            } else if (lne.substr(0,6) == 'Title:') {
                summary.title = lne.substr(7)
            } else if (lne.substr(0,12) == 'Description:') {
                summary.description = lne.substr(13)
            }
        })

        if (summary.type && summary.id) {
            //summary.content = fileContents;
           
            summary.fileName = fullFileName
            if (summary.baseType) {
                summary.link = summary.baseType + "-" + summary.id + ".json.html"
            }
            
            hashExamples[summary.type] = hashExamples[summary.type] || []
            hashExamples[summary.type].push(summary);
        }


        //console.log(summary.id)

    })
   


}

function assembleSectionText(section) {

}


//get all the FSH files in the directory & descendents
function walk(dir) {
    let results = [];
    let list = fs.readdirSync(dir);
    list.forEach(function(file) {
        if (file.substr(0,1) !== '.') {     //ignore hidden files
            file = dir + '/' + file;
            let stat = fs.statSync(file);
            if (stat && stat.isDirectory()) { 
                /* Recurse into a subdirectory */
                results = results.concat(walk(file));
            } else { 
                //Is a file - add if a FSH file
                if (file.substr(file.length-4,4) =='.fsh') {
                    results.push(file); 
                }         
                               
            }
        }
        
    });
    return results;
}

