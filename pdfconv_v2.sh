#!/bin/bash
#intended to streamline ocr analysis of scanned pdfs

#move into the directory containing the untreated pdfs
cd '/home/thomas/Dropbox/ADF/ADF database project/db scans/untreated image pdfs/'

#run OCR on each pdf in the directory, whose filename starts with 'DOC'
#for f in ./DOC*.pdf; do 
#    base=${f%.pdf};
#    # adjust for skewing caused by the printer;
#    # other options to help speed things up and adjust the accuracy
#    pdfsandwich -coo "-deskew 40%" -layout none -lang eng -quiet "$f";

#    echo "Successfully converted " "$f" " with OCR."
#done


#move all documents that end in '_ocr' to the finished folder
mv ./*_ocr.pdf '/home/thomas/Dropbox/ADF/ADF database project/db scans/PDFs with OCR/'
echo "Moved all OCR documents."


#move all remaining (unneeded) pdfs to the treated pdfs folder
mv ./*.pdf '/home/thomas/Dropbox/ADF/ADF database project/db scans/image pdfs - treated/'
echo "Moved all raw documents."

echo "Process completed."

