sushi fsh -o . 

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

# echo "Creating Profiles and extensions summary pages..."
# ../scripts/makeProfilesAndExtensions.js hpi


# echo "Making terminology summary"   # will copy into IG input folder
# ../scripts/makeTerminologySummary.js hpi


# Generate the pahe in the IG that has all the summaries in a logical order (including documents)
echo "Making Example summary"   # will copy into IG input folder
./localScripts/makeExampleSummary.js hpi
