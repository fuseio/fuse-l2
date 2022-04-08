Fuse L2
=======

All services request the AddressManager to 'know' where are the deployed contracts.
After deploying the contracts to L1

```
{
  "Deployer" : "0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266",
  "AddressDictator": "0x5109b75B41b4a6b2fD7A1BC29Db2ED67598946Ba",
  "BondManager": "0x7e0e0ac6f639eE4534580792B57E0f824E8BF174",
  "CanonicalTransactionChain": "0x9a65eF86f94ee2733508400bCFc4D121352dCC99",
  "ChainStorageContainer_CTC_batches": "0xE753E75D23D773820cE0A56Cf20463532F8E2Dbd",
  "ChainStorageContainer_SCC_batches": "0x55533eBf74F77ac0D7B60e8Af740fEb2E956DD7a",
  "Lib_AddressManager": "0xE2eaBc78232429D81eb319bB3e93abe14B8a4726",
  "OVM_L1CrossDomainMessenger": "0xEfA9802e007496fB797AFc455341Fed0fC0287fB",
  "Proxy__OVM_L1CrossDomainMessenger": "0x3A6B068890245538c94701eEDdEFc4F8A43bb202",
  "Proxy__OVM_L1StandardBridge": "0x349Bc296D9945b1D4004d6De029BeAB33A78DEdc",
  "StateCommitmentChain": "0x87f5D0295b1371909970bE7D8713590b0Dec96D6"
}

```



## seq - sequencer

- add genesis.json file from 'composer deployer'
- manually configure seq.env
- modified the start.sh

```
source seq.env && ./start.sh
```


## dtl - data transport layer

- manually configure dtl.env

```
source dtl.env && yarn start
```

## val - validator


