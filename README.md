# isdr-zk

Mock package repository reproducing part of a customer build graph for
FloxHub Factory demonstrations. Each package sleeps for a fixed number of
seconds and writes its name and the store paths of its catalog inputs.

| package | build time | catalog inputs |
|---|---|---|
| `isdr-zk-client` | 6 s | `python3Packages.srv-lookup` |
| `python3Packages.flox-isdr-client` | 3 s | `python3Packages.srv-lookup` |
| `python3Packages.isdr-zk-client` | 8 s | `python3Packages.srv_lookup` |
