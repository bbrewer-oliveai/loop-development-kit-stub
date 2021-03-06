## GripMock stubs for LDK
This repo has an example, happy-path stub for the Network sensor.

The stub is "programmed" through [GripMock](https://github.com/tokopedia/gripmock/), which is, sadly, not the most mature product. The author, however, is fairly open to PRs, etc. to improve it.

### Running it
First, pull in LDK proto files.
```bash
git submodule init
git submodule update
```
With the default stubs directory (points to `stubs/happy`).
```bash

./run-stubs.sh
```

With an explicit stubs directory.
```bash
./run-stubs.sh happy
```

## Using it
Make sure your gRPC client is configured to use `localhost:4770` as its address field. An example can be found in https://github.com/open-olive/loop-development-kit/pull/30

The stubs can be added or adjusted by following the documentation or looking at the example in `stubs/happy/network.httpRequest.json`.
