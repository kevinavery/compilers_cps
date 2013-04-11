
Interpreters for Project 4
==========================

These make it extremely easy to test your transformers.


## How it works
It will run your transform function, then diff your output with the expected output. 

If there is a difference and the `-i` flag is set, it will attempt to eval each s-expression and diff that.

The results are collected from the python print statements in the program. If the program runs and does not print, the pass/fail result is unknown.


## How to use lir-runner

Assuming you're using the stub code, make the following changes to `pydesugar_rkt.rkt`
- remove `(pretty-write ...)` call from bottom
- add `(provide desugar-program)` to top

To run a file named `test.py` there must be files named `test.py.trans` and `test.py.desugar` in the same directory. 



## How to use cps-runner

Assuming you're using the stub code, make the following changes to `pycps_rkt.rkt`
- remove `(pretty-write ...)` call from bottom
- add `(provide cps-transform-program)` to top

To run a file named `test.py` there must be files named `test.py.desugar` and `test.py.cps` in the same directory. 

