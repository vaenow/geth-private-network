#!/bin/bash

a1=$1
a2=$2
qty=$3

geth --datadir ./datadir/ --networkid 15 \
attach --exec "
a1 = web3.eth.accounts[${a1}]
a2 = web3.eth.accounts[${a2}]
personal.unlockAccount(a1);
web3.eth.sendTransaction({from: a1, to: a2, value: web3.toWei(${qty}, 'ether')}, function(err, txn){ console.log(err, txn)})"
