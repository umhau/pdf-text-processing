from cStringIO import StringIO
from pdfminer.pdfinterp import PDFResourceManager, process_pdf
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
import re #python regular expression library
import subprocess

def to_txt(pdf_path):
    input_ = file(pdf_path, 'rb')
    output = StringIO()

    manager = PDFResourceManager()
    converter = TextConverter(manager, output, laparams=LAParams())
    process_pdf(manager, converter, input_)

    return output.getvalue() 

def pdftotext(pdf_path):
    # requires python module subprocess
    subprocess.call(["pdftotext -layout " + pdf_path], shell=True)

#see if a word is in a text
def word_in_text(word,text):
    word = word.lower()
    text = text.lower()
    match = re.search(word,text)
    if match:
        return True
    else:
        return False

# see if multiple words are in a text (can be part of larger words)
# ignores capitalization
def some_words_in_text(some_words,text):
    # requires python module re
    regex = r""
    for i in some_words:
        regex = regex + r"(?=.*" + re.escape(i) + r")"
    if re.search(regex,text,re.IGNORECASE):
        return True
    else:
        return False

def open_text_file(text_file_path):
    # read the data into an array that we call tweets
    #tweets_data_path = './twitter_data_ADF1.txt'
    text = []
    text = open(text_file_path, "r")
    return text

search_term = 'brief'
filename = 'test2'
pdftotext('./'+filename+'.pdf')

text_file = open_text_file('./'+filename+'.txt')
print text_file
count = 0
for line in text_file:
    count = count+1
    try:
        # print line
        hit = word_in_text(search_term,line)
        if hit:
            print str(True) + str(count) + line
    except:
        continue
    if count == 100:
        break


#print text[1:300]
#result = some_words_in_text('brief',text)
#print result





