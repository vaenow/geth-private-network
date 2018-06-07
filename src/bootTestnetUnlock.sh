
echo $1
# geth --datadir ./datadir/ -networkid 15  --mine --minerthreads=4 --etherbase $1
geth --datadir ./datadir/ --networkid 15  --mine --minerthreads=4 --unlock 0x4663a93f790d7112c8530d20614a8a31aa5c9acb 
