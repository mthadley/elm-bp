[![Build Status](https://travis-ci.org/mthadley/elm-bp.svg?branch=master)](https://travis-ci.org/mthadley/elm-bp)

My own minimal boiler plate for small [Elm](http://elm-lang.org) projects. Does not include a
`package.json` and therefore does not include any direct `npm` dependencies.
However, you will still need a few Elm related command line tools installed, and you
probably will install those globally via `npm`:

```shell
$ npm install -g elm elm-test
```

You can then use `make` to test and build the project:

```shell
$ make all test
$ open dist/index.html
```
