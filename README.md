Bitcoin-Client fork

Changed namespacing from Bitcoin to Bitcoind


```ruby

api = Bitcoind::API.new("user", "pass")
api.request("getinfo")
```
