filename=PPDDM_reviewResults_V202108_V3.csv
curl -L -o $filename https://figshare.com/ndownloader/files/30463266?private_link=cbb2317239ecfa48339f

# remove \uFEFF / Byte-order-mark (BOM)
vi -c ":set nobomb" -c ":wq" $filename

touch output.ttl
touch ontology.owl

docker run --rm \
   --hostname http://www.biss-institute.com/rdf/elsa_poverty_debt \
   -v $(pwd)/output.ttl:/output.ttl \
   -v $(pwd)/ontology.owl:/ontology.owl \
   -v $(pwd)/triplifier.properties:/triplifier.properties \
   -v $(pwd):/data \
   ghcr.io/maastrichtu-cds/triplifier:latest