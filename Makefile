all:
	tr '3['
	sed -e 's/3\[//g' <grep.c >/tmp/grep.c.1
	sed -e "s/\'\[\'//g" </tmp/grep.c.1 >/tmp/grep.c.2
	./bred/bred c.bred bred </tmp/grep.c.2

install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

