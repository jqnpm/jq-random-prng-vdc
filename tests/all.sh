#!/usr/bin/env bash


fileUnderTest="${BASH_SOURCE%/*}/../jq/main.jq"


read -d '' fourLineTests <<-'EOF' || true
vdc: starts with 0 for 2.
0
vdc(2)
0

vdc: starts with 0 for 3.
0
vdc(3)
0

vdc: 1/2 is the first number.
1
vdc(2)
0.5

vdc: 1/3 is the first number.
1
vdc(3)
0.3333333333333333

vdc: 4 | 2
4
vdc(2)
0.125
EOF

function testAllFourLineTests () {
	echo "$fourLineTests" | runAllFourLineTests
}


# Run tests above automatically.
# Custom tests can be added by adding new function with a name that starts with "test": function testSomething () { some test code; }
source "${BASH_SOURCE%/*}/test-runner.sh"
