#! /bin/bash

output=$(cat template.md)

table=$(queryRdfFile "../data/*.ttl" ../queries/list-platform.sparql)
count=$(( $(echo "$table" | wc -l) -2))
table_info="${table}"
table_info+=$'\n\n'
table_info+="Count: ${count}"
output="${output//%%PLATFORMS_TABLE%%/$table_info}"

table=$(queryRdfFile "../data/*.ttl" ../queries/list-projects.sparql)
count=$(( $(echo "$table" | wc -l) -2))
table_info="${table}"
table_info+=$'\n\n'
table_info+="Count: ${count}"
output="${output//%%PROJECTS_TABLE%%/$table_info}"

echo "$output" > ../docs/inventory.md
