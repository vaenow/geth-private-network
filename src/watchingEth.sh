#!/bin/bash

# geth --testnet attach --exec 'web3.eth.getBalance("8e1130e0ea028caebba6264259365ed97e4509ff");'

account=$1

geth --datadir ./datadir/ --networkid 15 attach --exec "
var filter = web3.eth.filter('pending');

filter.watch(function (error, log) {
  console.log(error)
  console.log(log); 
});
"
