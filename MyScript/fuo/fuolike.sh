#/bin/bash
FAVOR=~/.FeelUOwn/collections/favorite.fuo
TMP=~/.FeelUOwn/collections/tmp
fuo status | head -7 | tail -1 | awk '{$1="";print $0}' >> $FAVOR
awk '!x[$0]++' $FAVOR > $TMP
mv $TMP $FAVOR
