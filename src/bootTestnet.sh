
echo $1
# geth --datadir ./datadir/ -networkid 15  --mine --minerthreads=4 --etherbase $1
geth --datadir ./datadir/ --networkid 15  --mine --minerthreads=4
