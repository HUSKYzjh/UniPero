# Model artifacts

`graph.pb` is the baseline DeepMD frozen graph shipped with UniPero.  It is copied into the validation and simulation workflows by `prepare.sh`.

## Compressed model release

The released compressed artifact is stored at the repository root as `../compressed.pb`, so it can be consumed separately from the baseline model.  Generate it from this graph with a DeepMD-kit version compatible with the frozen graph, for example:

```bash
dp compress -i graph.pb -o ../compressed.pb
dp test -m ../compressed.pb -s ../data/Task-I/BT-300K/deepmd -n 200
```

Record the exact DeepMD-kit version and validation result before replacing the released `compressed.pb`.  Compression changes inference representation; it must not change the model type map or produce materially different test errors.
