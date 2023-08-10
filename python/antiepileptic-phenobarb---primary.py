# Hayley C Gorton, Roger T Webb, Mathew J Carr, Marcos Delpozo-Banos, Ann John, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"dn6..","system":"readv2"},{"code":"dn6x.","system":"readv2"},{"code":"dn6y.","system":"readv2"},{"code":"dn6z.","system":"readv2"},{"code":"dn7..","system":"readv2"},{"code":"dn71.","system":"readv2"},{"code":"dn72.","system":"readv2"},{"code":"dn73.","system":"readv2"},{"code":"dn74.","system":"readv2"},{"code":"dn75.","system":"readv2"},{"code":"dn76.","system":"readv2"},{"code":"dn77.","system":"readv2"},{"code":"dn7d.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antiepileptic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antiepileptic-phenobarb---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antiepileptic-phenobarb---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antiepileptic-phenobarb---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
