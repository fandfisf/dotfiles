# Frequently used code snippets
## Shell helpful commands

* Look for a field in a JSON file using `grep` `grep  -o '"firstName":".*"'  ./data.json`
* Look for a sepcial characters in a `grep` expression `grep  -o '\\"firstName\\":\\".*\\"'  ./records.json`, where the quotes are escaped with a `\`
