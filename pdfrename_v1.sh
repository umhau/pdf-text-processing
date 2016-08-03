#!/bin/bash
#intended to streamline ocr analysis of scanned pdfs


#cd '/home/thomas/Dropbox/ADF/ADF database project/db scans/PP v Drummond/'
#for f in ./*.pdf; do 
#    base=${f%.tex};
#    pdfsandwich "$f" ;
#done
#echo "conversion completed."


cd /home/thomas/db_work/
# pdftotext ./test_ocr.pdf - | grep -C5 -n -i "No."
pdftotext ./test_ocr.pdf - | grep -C5 -n "No."
