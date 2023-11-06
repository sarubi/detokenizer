
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




Note:

1. In wiki large test src sentences are same as Turkcorpus src sentences. 
    1. wikilarge test src: data-simplification/wikilarge/**wiki.full.aner.ori.test.src** equals to data/en/test_sets_from_EASSE/turkcorpus/**test.truecase.detok.orig**
    2. wikilarge test tgt:  data-simplification/wikilarge/**wiki.full.aner.ori.test.dst**  equals to      data/en/test_sets_from_EASSE/turkcorpus/**test.truecase.detok.simp.0**
    
    But wikilarge test src, tgt contains words like `-LRB- -RRB-` etc. to represent lift brackets, right brackets etc. 
    
    example from wikilarge test set: data-simplification/wikilarge/wiki.full.aner.ori.test.src
    
    `Alessandro -LRB- '' Sandro '' -RRB- Mazzola -LRB- born 8 November 1942 -RRB- is an Italian former football player .` 
    
    In turkcorpus test: src data/en/test_sets_from_EASSE/turkcorpus/test.truecase.detok.orig
    
    `Alessandro ("Sandro") Mazzola (born 8 November 1942) is an Italian former football player.`
    
4. wiki large eval data consists of 992 sentences, but not from Turkcorpus one.