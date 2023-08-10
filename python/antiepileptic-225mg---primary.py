# Hayley C Gorton, Roger T Webb, Mathew J Carr, Marcos Delpozo-Banos, Ann John, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"d265.","system":"readv2"},{"code":"d266.","system":"readv2"},{"code":"dn93.","system":"readv2"},{"code":"dn9x.","system":"readv2"},{"code":"dnf5.","system":"readv2"},{"code":"dnf6.","system":"readv2"},{"code":"dnf7.","system":"readv2"},{"code":"dnf8.","system":"readv2"},{"code":"dnfA.","system":"readv2"},{"code":"dnfB.","system":"readv2"},{"code":"dnk7.","system":"readv2"},{"code":"dnk8.","system":"readv2"},{"code":"dnkA.","system":"readv2"},{"code":"dnkC.","system":"readv2"},{"code":"dnl1.","system":"readv2"},{"code":"dnl4.","system":"readv2"},{"code":"dnp1.","system":"readv2"},{"code":"dnp8.","system":"readv2"},{"code":"dnps.","system":"readv2"},{"code":"dnpz.","system":"readv2"},{"code":"dnq1.","system":"readv2"},{"code":"dnq4.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antiepileptic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antiepileptic-225mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antiepileptic-225mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antiepileptic-225mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
