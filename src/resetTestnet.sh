

echo clean ./datadir/
rm -rf ./datadir
mkdir ./datadir

geth init ../genesis.json --datadir ./datadir/ 
