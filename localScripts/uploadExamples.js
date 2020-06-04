#!/usr/bin/env node
//create bundles for thre examples

let fs = require('fs')

let FhirExamplePath =  '../shorthand/build/input/examples/'
let hashResources = {};


let bundle = {resourceType:"Bundle",entry:[]}
let list = fs.readdirSync(FhirExamplePath);
list.forEach(function(file) {
    if (file.indexOf('.json') > -1) {
        //console.log(file)
        let fullFileName = FhirExamplePath + file;
        let contents = fs.readFileSync(fullFileName).toString()

        let json = JSON.parse(contents,null,2)
        let ref = json.resourceType + "/" + json.id
        hashResources[ref] = json
        bundle.entry.push({resource:json})
    }
    
   
})

//write out the cmplete bundle
fs.writeFileSync("./bundle.json",JSON.stringify(bundle))

//look for compositions
for (var key of Object.keys(hashResources)) {
    let resource = hashResources[key]
    //console.log(resource.resourceType)
    if (resource.resourceType == 'Composition') {
        processComposition(resource)
    }

}

    return

//process the composition resource
function processComposition(comp) {
    let arMD = []
    arMD.push("### " + comp.id)
    arMD.push("### Examples by Type")
    arMD.push("");
    arMD.push("| Doc | Section | Contents")
    arMD.push("| --- | --- | --- |")
    arMD.push("| Subject: " + comp.subject.reference + " | | |")

    comp.author.forEach(function(author){
        arMD.push("| Author: " + author.reference + " | | |")
    })

    arMD.push("| Sections  | | |")
    //add the section
    comp.section.forEach(function(sect){
        let sectionDisplay=""
        sect.code.coding.forEach(function(coding){
            sectionDisplay += coding.display;
        })
        arMD.push("| | " + sectionDisplay)      //the section header
        //now for the section contents
        sect.entry.forEach(function(entry){     //generally only 1
            let resource = hashResources[entry.reference]
            //console.log(resource)
            if (resource && resource.resourceType == 'List') {
                //retrieve the contents of the list and display each on a line
                if (resource.emptyReason) {
                    arMD.push("| | | Section is empty")  
                } else {
                    resource.entry.forEach(function(entry){
                        let entryResource = hashResources[entry.item.reference]

                        let text = getDivText(entryResource.text.div)
                        arMD.push("| | | " + text)  
                    })
                }
                
            } else {
                console.log("WARNING: Section " +sectionDisplay + " is not a list" )
            }
        })




    })

    let compFileName = "./document-" + comp.id + ".md";
    let contents = arMD.join('\n')
    fs.writeFileSync(compFileName,contents)

}

function getDivText(text) {
    let g = text.indexOf('>')
    let g1 = text.indexOf("<",1)
    return text.substr(g+1,g1-g-1)
}
