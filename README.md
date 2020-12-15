## GripMock stubs for LDK
This repo has an example, happy-path stub for the Network sensor.

The stub is "programmed" through [GripMock](https://github.com/tokopedia/gripmock/), which sadly not the most mature product. The author, however, is fairly open to PRs, etc. to improve it.

### Running it
```bash
./run-stubs.sh
```

```bash
./run-stubs.sh happy
```

## Using it
Make sure your gRPC client is configured to use `localhost:4770` as its address field.

The stubs can be added or adjusted by following the documentation or looking at the example in `stubs/happy/network.httpRequest.json`.