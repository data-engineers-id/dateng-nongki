---
marp: true
---

# What about JSON files?
---
# Have you heard of `jq` library?
- It's a powerful command-line utility and library for processing JSON data in Unix-like environments.
- designed to work with JSON data streams and provides a wide range of functionalities for data filtering, formatting, and cleansing. 
- `jq` allows you to extract specific data from JSON, manipulate JSON structures, and perform various transformations on the data.

---

# Let's learn together

---

- We will use the same data as before, but in JSON format
![data-source][data-source]

---
# Navigating a JSON file
## as simple as `jq 'QUERY' data-source.json`
- To view the entire JSON data:
`jq '.' data-source.json`
- To select and display only the "Nama" and "Umur" fields of all records:
`jq '.[] | {Nama, Umur}' data-source.json`
- To filter records with an age greater than 25:
`jq '.[] | select(.Umur > 25)' data-source.json`
- To extract "Nama" and "Umur" fields of records with hobbies:
`jq '.[] | select(.hobbies) | {Nama, Umur}' data-source.json`
---
- To display the "kota" (city) field from records that have the "alamat" (address) field:
`jq '.[] | select(.alamat) | .alamat.kota' data-source.json`
- To count the number of records:
`jq 'length' data-source.json`
- To find the maximum and minimum age:
`jq 'max_by(.Umur) | .Umur' data-source.json`
`jq 'min_by(.Umur) | .Umur' data-source.json`
- To extract "Nama" and "Umur" fields and format as "Nama berusia Umur"
`jq '.[] | "\(.Nama) berusia \(.Umur)"' data-source.json`
---

## The `map` directive
- used to apply a filter or function to each element of an array. It allows you to perform data transformations or filtering on arrays of JSON objects.
- Let's try to filter records with `Umur` greater than 30
`jq 'map(select(.Umur > 30))' data-source.json`
- Now, we replace the underscores in `Nama` with spaces
`jq 'map(.Nama |= gsub("_"; " "))' data-source.json`

---

## the `sort` directive 
- The `sort` function along with the `reverse` function in `jq` are used to sort the JSON data in descending order based on a specific field. The `sort` function sorts the JSON data in ascending order, and then the `reverse` function is used to reverse the order and obtain the descending sort.
`jq 'sort_by(.Umur) | reverse' data-source.json`

---

## [assignment] Data Processing
### Tasks
- Using the `data-source.json` file
- Perform data cleansing to replace underscores in the `Nama` column with spaces.
- Perform data extraction to format the output as `'Nama' berusia 'Umur'`.
- Filter and group ages below-25 and 25-and-above.
- Combine those commands into a single shell script file.

[data-source]: images/4-data-source.png