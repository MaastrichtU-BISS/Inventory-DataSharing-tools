curl -L -o PPDDM_reviewResults_V202108_V3.csv https://figshare.com/ndownloader/files/30463266?private_link=cbb2317239ecfa48339f

touch output.ttl
touch ontology.owl

docker run -it --rm \
   -v $(pwd)/output.ttl:/output.ttl \
   -v $(pwd)/ontology.owl:/ontology.owl \
   -v $(pwd)/triplifier.properties:/triplifier.properties \
   -v $(pwd):/data \
   registry.gitlab.com/um-cds/fair/tools/triplifier:latest /bin/bash