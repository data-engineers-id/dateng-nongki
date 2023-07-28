---
marp: true
---

# Moving on!
- Let's try to do some data processing!
- make sure `sed`, `grep`, and `awk` is running in your environment
- these text-based tools are so quick, it's so efficient even in a large number of texts
---

# Let's learn

---

## The Stream Editor `sed`
-  Allows you to perform text transformations on an input stream (a file or input from a pipeline) and then output the modified stream. It is commonly used for search and replace operations, among other text manipulations.

---

- Let's use this data and save it to a file called `data-sed.csv`
```
Nama, Usia, Kota
Yusuf,17,New York
Zalmawati,25,Perth
Reza,28,Bekasi
```

- Our goal is to replace "Perth" with "Jakarta" in the Kota column. We can achieve this using the `sed` command as follows:<br>
`$ sed 's/Perth/Jakarta/' data-sed.csv > modified_data.csv`

---

- Explanation:
  - `sed`: Invokes the sed command.
  - `s/Perth/Jakarta/`: This is the search and replace pattern. The `s` stands for substitute, and we're searching for "Perth" and replacing it with "Jakarta".
  - `sample_data.csv`: Specifies the input file, i.e., the file to perform the search and replace operation on.
  - `modified_data.csv`: Redirects the modified output to a new file named `modified_data.csv`.

---

- Pro Tip: 
  - You can also stream any output to `sed` to immediately change the value
  - You can use `regex` to perform even more powerful `search and replace` operations

---

## The Data Extractor `awk`
- Operates on a per-line basis, reading input line by line and applying patterns and actions to process the data. `awk` excels at working with structured data, making it a great choice for parsing CSV files and performing various data manipulations.

---
- Let's use the previous data file and copy it to a new file called `data-awk.csv`
- We will try to extract the data using the format that we want: <br>`$ awk -F ',' 'NR > 1 {print $1 " berusia " $2 " tahun."}' data-awk.csv`<br>

![awk-1][awk-1]

---
- Explanation:
  - `-F ','`: This option specifies the field separator for awk. In this case, we set it to ',' to indicate that the CSV file uses commas as separators between fields.
  - `'...'`: The single quotes enclose the awk program.
  - `print $1 " berusia " $2 " tahun."`: This is the action part of the `awk` program. It prints the desired output, which consists of the first field ($1, representing the `Nama` column) and the second field ($2, representing the `Usia` column)
  - In this example, `awk` processes each line of the CSV file and prints the extracted information in the desired format.

---
- Pro tip
  - `awk` can also perform conditional statements, loops. and calculations on data
  - You can use `regex` to perform even more powerful `data transformation` and `data cleaning ` operations
---
## The log file's best friend `grep`
- Perfect for searching and filtering text based on patterns, including regular expressions. 
- It is commonly used to extract specific lines or patterns from files that match a given search criteria.

---
- Let's use this data and save it to a file called `logfile.log`
```
2022-01-01,INFO,User logged in
2022-01-01,ERROR,Invalid input detected
2022-01-02,WARNING,Disk space low
2022-01-02,ERROR,Database connection failed
2022-01-03,INFO,User logged out
```

- find all lines containing `ERROR` in the log file using this command:
`$ grep "ERROR" logfile.log`

- Explanation:
  - `grep "ERROR"`: This command searches for lines containing the word `ERROR` in the file `logfile.log` and prints those lines.

---
- Now, let's use a regular expression to find lines that start with `2022-01-01`:
`$ grep "^2022-01-01" logfile.log`
- Explanation:
  - `grep "^2022-01-01"`: This command searches for lines that start with `2022-01-01` in the file `logfile.log` and prints those lines.

---
## [assignment] Data Processing
### Use this csv file, save it as `data-source.csv`
```
Nama,Umur
Arnetha_Marchelina,25
Sebastian_Cahyo_Ardhi_Iswara,30
Helmi_Aziz_Muhammad,22
Muhammad_Ridwan_Maulana,28
Arif_Setiyawan,24
Rahmatulloh,31
Aidiel_Fitra,23
Yusuf_Hanafi_Angkat,26
Isharridho_Pratama,27
Vincent_Junitio_Ungu,29
Hairulloh_Sukur,33
Yuandika_Alfahreiza,20
Sahala_Josua_Sinaga,34
Septian_Dwi_Kurnia,21
Fitra_Anugrah,32
Muhammad_Ridwan_Maulana,35
```
---
### Tasks
- Perform data cleansing using `sed` to replace underscores in the `Nama` column with spaces.
- Perform data extraction using `awk` to format the output as `'Nama' berusia 'Umur'`.
- Use `grep` to filter and group ages below-25 and 25-and-above.
- Combine those commands into a single shell script file.
- Clean your code, give comments, and output echoes as much as you can to help you test and troubleshoot.
- Good luck!

[sed-1]: images/3-sed-1.png
[awk-1]: images/3-awk-1.png