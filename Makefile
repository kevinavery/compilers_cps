
## Notes:
##  d* runs the desugar interpreter
##  c* runs the cps interpreter


# Runs a single test as specified.
# Example: make spec test=relativePath/tst.py
# (relativePath must contain tst.py.trans and tst.py.desugar)
dspec:
	racket lir-runner.rkt ${test}
# (relativePath must contain tst.py.desugar and tst.py.cps)
cspec:
	racket cps-runner.rkt ${test}

# Runs a single test as specified, with interpreter enabled.
# - If the transformed program is different, this will attempt to 
# interpret and compare the expected and actual resulting programs.
# - If the transformed program is the same, this will not bother
# to interpret the program.
dspeci:
	racket lir-runner.rkt ${test} -i
cspeci:
	racket cps-runner.rkt ${test} -i

# Runs all tests in specified directory.
# Example: make tests dir=relativePath
# (relativePath must contain tst.py, tst.py.trans, and tst.py.desugar)
dspecsi:
	for i in ${dir}/*.py; do racket lir-runner.rkt $$i -i; done
# (relativePath must contain tst.py, tst.py.desugar, and tst.py.cps)
cspecsi:
	for i in ${dir}/*.py; do racket cps-runner.rkt $$i -i; done


# Runs all tests in various subdirectories
dall:
	for i in ./*/*.py; do racket lir-runner.rkt $$i -i; done
call:
	for i in ./*/*.py; do racket cps-runner.rkt $$i -i; done

