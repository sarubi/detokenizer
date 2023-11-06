
WikiLarge dataset is obtained from: https://github.com/XingxingZhang/dress

Zip file can be found in this repo: data-simplification.tar.bz2

Object of this repo/code is to de-tokenize the WikiLarge dataset which is obtained from above-mentioned repo (it is in tokenized format).

 
Obtained detokenizer.perl from Muses: https://github.com/moses-smt/mosesdecoder/blob/master/scripts/tokenizer/detokenizer.perl

Steps:
1. Clean and replace words like LRB, RRB with "(", ")" using main.py and also here double quotation mark is represented as two single quotas, so correct those as well.
2. Then run the Muses's detokenizer.perl


But de-token files still have some issues like:

1. `So far the 'celebrity' episodes have included Vic Reeves, Nancy Sorrell, Gaby Roslin, Scott Mills, Mark Chapman, Simon Gregson, Sue Cleaver, Carol Thatcher, Paul O 'Grady and Lee Ryan.`
2. `He died on May 29, 1518 in Madrid, Spain and was buried in the church of San Benito d 'Alcantara.`
2. `Shi 'a Muslims consider Karbala to be one of their holiest cities after Mecca, Medina, Jerusalem and Najaf.`
3. `Monteux is a commune of the Vaucluse département in southern France, in the area Provence-Alpes-Côte d 'Azur.`

