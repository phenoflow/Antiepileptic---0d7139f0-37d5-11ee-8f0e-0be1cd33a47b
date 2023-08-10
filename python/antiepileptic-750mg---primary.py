# Hayley C Gorton, Roger T Webb, Mathew J Carr, Marcos Delpozo-Banos, Ann John, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"dn82.","system":"readv2"},{"code":"dn83.","system":"readv2"},{"code":"dn91.","system":"readv2"},{"code":"dn94.","system":"readv2"},{"code":"dn9y.","system":"readv2"},{"code":"dnax.","system":"readv2"},{"code":"dnf1.","system":"readv2"},{"code":"dnf3.","system":"readv2"},{"code":"dnjA.","system":"readv2"},{"code":"dnk1.","system":"readv2"},{"code":"dnk4.","system":"readv2"},{"code":"dnkD.","system":"readv2"},{"code":"dno4.","system":"readv2"},{"code":"dnow.","system":"readv2"},{"code":"dnp2.","system":"readv2"},{"code":"dnpy.","system":"readv2"},{"code":"dnt3.","system":"readv2"},{"code":"dnt9.","system":"readv2"},{"code":"dnv1.","system":"readv2"},{"code":"dnv7.","system":"readv2"},{"code":"dnvC.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antiepileptic-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antiepileptic-750mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antiepileptic-750mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antiepileptic-750mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
