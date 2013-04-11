
Interpreters for Project 4
==========================

These make it extremely easy to test your transformers.

## How it works
It will run your transform function, then diff your output with the expected output. 

If there is a difference, it will optionally attempt to eval each s-expression and diff that.

The results are collected from the python print statements in the program. If the program runs and does not print, the pass/fail result is unknown.

## How to use

Assuming you're using the stub code, make the following changes to `pydesugar_rkt.rkt` and `pycps_rkt.rkt`
- remove `(pretty-write ...)` call from bottom
- add `(provide transform-program)` to top

To run a file named `test.py` there must be files named `test.py.parsed` and `test.py.trans` in the same directory. 

To run with interpretation, use the `-i` flag (see Makefile).
