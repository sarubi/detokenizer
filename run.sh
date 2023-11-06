#for version-1: v1_without_LRB_RRB_replaced_and_detoken_by_TreebankWordDetokenizer
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.test.src  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.test.detok.src
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.test.dst  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.test.detok.dst
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.valid.src  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.valid.detok.src
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.valid.dst  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.valid.detok.dst
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.train.src  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.train.detok.src
#python main.py  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-simplification/wikilarge/wiki.full.aner.ori.train.dst  /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.train.detok.dst

#python main.py  data-simplification/test.src   /Users/sarubi/Desktop/A8/code/2/detokenizer/data-detokenized/wiki.full.aner.ori.test.detok.src


# Test
python main.py  data-simplification/wikilarge/wiki.full.aner.ori.test.src  data-detokenized/temp.wiki.full.aner.ori.test.src
/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.test.src  \
    > data-detokenized/wiki.full.aner.ori.test.detok.src


python main.py  data-simplification/wikilarge/wiki.full.aner.ori.test.dst  data-detokenized/temp.wiki.full.aner.ori.test.dst
/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.test.dst   \
    > data-detokenized/wiki.full.aner.ori.test.detok.dst

# Valid
python main.py  data-simplification/wikilarge/wiki.full.aner.ori.valid.src  data-detokenized/temp.wiki.full.aner.ori.valid.src
/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.valid.src   \
    > data-detokenized/wiki.full.aner.ori.valid.detok.src


python main.py  data-simplification/wikilarge/wiki.full.aner.ori.valid.dst  data-detokenized/temp.wiki.full.aner.ori.valid.dst
/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.valid.dst   \
    > data-detokenized/wiki.full.aner.ori.valid.detok.dst

# Train
python main.py  data-simplification/wikilarge/wiki.full.aner.ori.train.src  data-detokenized/temp.wiki.full.aner.ori.train.src
/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.train.src    \
    > data-detokenized/wiki.full.aner.ori.train.detok.src


python main.py  data-simplification/wikilarge/wiki.full.aner.ori.train.dst  data-detokenized/temp.wiki.full.aner.ori.train.dst

/Users/sarubi/Desktop/A8/code/2/detokenizer/detokenizer.perl -l en \
    < data-detokenized/temp.wiki.full.aner.ori.train.dst   \
    > data-detokenized/wiki.full.aner.ori.train.detok.dst


