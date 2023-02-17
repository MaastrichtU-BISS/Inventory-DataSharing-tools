#! /bin/bash

output=$(cat template.md)

table=$(queryRdfFile "../data/*.ttl" ../queries/list-platform.sparql)
count=$(( $(echo "$table" | wc -l) -2))
table="${table}\n\nCount: ${count}"
output="${output//%%PLATFORMS_TABLE%%/$table}"

table=$(queryRdfFile "../data/*.ttl" ../queries/list-projects.sparql)
count=$(( $(echo "$table" | wc -l) -2))
table="${table}\n\nCount: ${count}"
output="${output//%%PROJECTS_TABLE%%/$table}"

echo "$output" > ../public/inventory.md
