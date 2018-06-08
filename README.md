# geth-private-network
Ethereum geth private network

使用命令行 `geth`，调试以太坊私有网络 

## 安装 geth 

https://github.com/ethereum/go-ethereum/wiki/Installing-Geth

## clone git repo

```bash
git clone https://github.com/vaenow/geth-private-network
cd geth-private-network/src
```

### 1. 初始化创世节点 init genesis block 

```bash
./resetTestnet.sh
```

```log
INFO [06-08|14:24:43] Maximum peer count                       ETH=25 LES=0 total=25
INFO [06-08|14:24:43] Allocated cache and file handles         database=/home/xxx/eth/geth-private-network/src/datadir/geth/chaindata cache=16 handles=16
INFO [06-08|14:24:43] Writing custom genesis block
INFO [06-08|14:24:43] Persisted trie from memory database      nodes=0 size=0.00B time=2.723µs gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [06-08|14:24:43] Successfully wrote genesis state         database=chaindata                                                         hash=5e1fc7…d790e0
INFO [06-08|14:24:43] Allocated cache and file handles         database=/home/xxx/eth/geth-private-network/src/datadir/geth/lightchaindata cache=16 handles=16
INFO [06-08|14:24:43] Writing custom genesis block
INFO [06-08|14:24:43] Persisted trie from memory database      nodes=0 size=0.00B time=2.237µs gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [06-08|14:24:43] Successfully wrote genesis state         database=lightchaindata                                                         hash=5e1fc7…d790e0
```

### 2. 创建第一个账户 create first eth account
```bash
./createAccount.sh
```

```log
INFO [06-08|14:27:12] Maximum peer count                       ETH=25 LES=0 total=25
Your new account is locked with a password. Please give a password. Do not forget this password.
Passphrase:
Repeat passphrase:
Address: {258ae6aed76f98e07fe69e4d031c8c9bb402e8cb}
```

### 3. 启动以太坊私有网络，并开始挖矿 boot ethereum private network, and start mining
```bash
./bootPrivateNetwork.sh
```

### Handbook
Name |  Description | 描述
------------ | ------------ | ----------
resetPrivateNetwork.sh | reset private network database dir |  重置私有网络的数据库
createAccount.sh | create an account | 创建账户
listAccounts.sh | list all accounts | 打印所有账户
bootPrivateNetwork.sh | boot private network | 启动私有网络
bootPrivateNetworkUnlock.sh | unlock an account & boot private network | 解锁一个账户，然后启动私有网络
console.sh | step into CLI | 进入命令行
getBalanceOf.sh | get account's balance | 打印用户资产
unlockAccount.sh | unlock an account | 解锁一个账户
transfer.sh | send ether to another account | 转账：账户A 向 账户B 
getTxn.sh | print transaction's details | 打印交易的详细信息 
watchingEth.sh | watching txn logs | 监控交易日志





