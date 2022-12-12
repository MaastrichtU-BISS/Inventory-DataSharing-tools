#! /bin/bash

output=$(cat template.md)

platforms_table=$(queryRdfFile "../data/platforms.ttl" ../queries/list-platform.sparql)
output="${output//%%PLATFORMS_TABLE%%/$platforms_table}"

projects_table=$(queryRdfFile "../data/projects.ttl" ../queries/list-projects.sparql)
output="${output//%%PROJECTS_TABLE%%/$projects_table}"

echo "$output" > ../inventory.md
