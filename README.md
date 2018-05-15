An example of different behavior of `package:js` for Dart2JS/DDC.

To run locally:

```bash
$ pub upgrade

# Executes with DartDevC.
$ pub run build_runner test

# Executes with Dart2JS.
$ pub run build_runner test --release
```

The expectation is either _both_ or _neither_ compilers cause the test to fail. The reality is that DDC allows and Dart2JS fails. I'm not sure which one is strictly "right".
