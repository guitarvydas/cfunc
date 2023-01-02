all:
	./bred/bred c.bred bred <grep.c

install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

