#!/bin/bash
#intended to streamline ocr analysis of scanned pdfs

cd '/home/thomas/Dropbox/ADF/ADF database project/db scans/PP v Drummond/'

pdfsandwich -coo "-deskew 40%" -last_page 5 -layout none -lang eng DOC446.pdf

#pdfsandwich -layout none -tesso "-dn right -dr 10.0" -lang eng -last_page 5  DOC448.pdf

# pdfsandwich -last_page 5 DOC446.pdf

echo "conversion completed."
