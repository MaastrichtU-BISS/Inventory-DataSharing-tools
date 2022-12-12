# Generate human-readable inventory

This inventory is based on the contents in the [../data](../data) folder, combined with the queries in the [../queries](../queries) folder.
The bash script [generate.sh](generate.sh) will read the contents of [template.md](template.md) and fill the placeholders for the various sparql queries.

The queryRdfFile script is a bash shim for the Python script available [here](https://github.com/jvsoest/UnixSettings/blob/master/python/queryRdfFile.py).

Once executed, the [../inventory.md](../inventory.md) file in the main folder of this repository will be overwritten. Afterwards, a manual commit & push can be done to include the changes in the repository.
