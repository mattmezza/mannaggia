import urllib2, string
from bs4 import BeautifulSoup

santiebeati = []
for iniziale in string.letters:
    risposta = urllib2.urlopen('http://santiebeati.it/'+iniziale.upper())
    soup = BeautifulSoup(risposta, "html.parser")
    for b in soup.findAll('b'):
        if len(b.findAll("font"))==1:
            santiebeati.append(b.getText())
santiebeati_f = open("santiebeati", 'w')
for santo in santiebeati:
    print >> santiebeati_f, santo.encode('utf-8')
