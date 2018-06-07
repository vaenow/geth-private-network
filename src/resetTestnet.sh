

echo clean ./datadir/
rm -rf datadir
mkdir datadir

geth --datadir ./datadir/ init genesis.json
