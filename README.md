<p align="center">
  <a href="https://github.com/joelpurra/jqnpm"><img src="https://raw.githubusercontent.com/joelpurra/jqnpm/master/resources/logotype/penrose-triangle.svg?sanitize=true" alt="jqnpm logotype, a Penrose triangle" width="100" border="0" /></a>
</p>

# [jq-random-prng-vdc](https://github.com/joelpurra/jq-random-prng-vdc)

An [implementation of](https://rosettacode.org/wiki/Van_der_Corput_sequence#jq) the [Van der Corput](https://en.wikipedia.org/wiki/Van_der_Corput_sequence) [quasirandom sequence](https://mathworld.wolfram.com/QuasirandomSequence.html) generator function. The range is `[0,1)`.



> ## ⚠️ This project has been archived
>
> No future updates are planned. Feel free to continue using it, but expect no support.



[Used with permission](https://github.com/stedolan/jq/issues/677#issuecomment-71730811) from Peter Koppstein ([@pkoppstein](https://github.com/pkoppstein)). Also published on the [Rosetta Code](https://rosettacode.org/) wiki.

This is a package for the command-line JSON processor [`jq`](https://stedolan.github.io/jq/). Install the package in your jq project/package directory with [`jqnpm`](https://github.com/joelpurra/jqnpm):

```bash
jqnpm install joelpurra/jq-random-prng-vdc
```



## Usage


```jq
import "joelpurra/jq-random-prng-vdc" as RandomPrngVdc;

# $index | RandomPrngVdc::vdc($base)
4 | RandomPrngVdc::vdc(2)	# 0.125

# Multiple samples
import "joelpurra/jq-math" as Math;
range(2;6) | . as $base | "Base \(.): \( [ range(0;11) | RandomPrngVdc::vdc($base) | Math::round(3) ] )"

# Output:
Base 2: [	0,	0.5,	0.25,	0.75,	0.125,	0.625,	0.375,	0.875,	0.063,	0.563,	0.313	]
Base 3: [	0,	0.333,	0.667,	0.111,	0.444,	0.778,	0.222,	0.556,	0.889,	0.037,	0.37	]
Base 4: [	0,	0.25,	0.5,	0.75,	0.063,	0.313,	0.563,	0.813,	0.125,	0.375,	0.625	]
Base 5: [	0,	0.2,	0.4,	0.6,	0.8,	0.04,	0.24,	0.44,	0.64,	0.84,	0.08	]
```



---

## License
Copyright (c) 2014, 2015 Peter Koppstein <https://github.com/pkoppstein> and Joel Purra <https://joelpurra.com/>
All rights reserved.

When using **jq-random-prng-vdc**, comply to the MIT license. Please see the LICENSE file for details.
