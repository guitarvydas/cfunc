# cfunc - Experiment in using a "structured" grep

# usage: make
- this should display a list of 80 names
- there are some warts (see "needs further investigation" below)

# How do we test whether the result is correct?
ATM, the best I can think of is to eye-ball grep.c and compare it with the output.

# Who Cares?

This is a "quickie" hack to help developers during development.

As such, it is not a life-and-death issue if the result is inaccurate.  Like using REGEX, or, grep, or, ...

As such, this is a useful tool(s) in a development workflow.  It would be nicer if it was more accurate, but I wouldn't spend lots of time on improving the accuracy, if my goal is to produce production code.  I don't expect every REGEX I write to be perfect, if I use such REGEXs to help me develop more quicklym instead of using them in the production code.

# needs further investigation:
- As written, this grammar+fab doesn't pick up empty function bodies {}, see clear_asan_poison (I suspect that a trivial change of block+ to block* would do the trick, but I like this result)
- As written, this picks up 'switch (...) {...}' as a function in one place
- misses: try_fgrep_pattern ()
