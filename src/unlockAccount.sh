
geth --datadir ./datadir/ --networkid 15 \
attach --exec "
personal.unlockAccount('$1', '$2');
" 
