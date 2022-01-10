.PHONY: snapshot
snapshot:
	forge test --optimize --force | grep testBench | sed 's/.*testBench/testBench/g' > .gas-snapshot