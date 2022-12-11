#! /bin/bash

output=$(cat template.md)

platforms_table=$(queryRdfFile  -of simple "../data/platforms.ttl" ./list-platform.sparql)
output="${output//%%PLATFORMS_TABLE%%/$platforms_table}"

echo "$output" > ../inventory.md
