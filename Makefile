all:
	./bred/jsbred c.bred bred <grep.c

dev:
	./bred/jsbred c.bred bred --keep <src.c

install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

