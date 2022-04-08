Fuse L2
=======

All services request the AddressManager to 'know' where are the deployed contracts.



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


