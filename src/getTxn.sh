#!/bin/bash

echo $1

geth --datadir ./datadir/ --networkid 15 attach --exec "
web3.eth.getTransaction('$1')
//, function(err, data){
//	console.log(err, JSON.data);
//})
"
