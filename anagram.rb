# L’algoritmo
# 
# La funzione di questo mese prende in input due stringhe e stampa vero se una delle
# due è anagramma dell’altra o falso in caso contrario (ovviamente sono consentite 
# anche, per i linguaggi che lo permettono, 0 ed 1 o 0 e ~0).

p eval"(#{a='ARGV.shift.split(//).sort'}==#{a})rescue :E"