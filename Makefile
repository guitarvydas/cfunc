all: repos functionnamesquickie

functionnamesquickie:
	./fab/fab - Cfunctions c.ohm c.fab <grep.c

functionnamesquickie_small_test:
	./fab/fab - Cfunctions c.ohm c.fab <src.c

install: repos npmstuff

repos:
	# I've tried multigit on Ubuntu and MacOS
	# If multigit doesn't work on your setup, just 'git clone git@github.com:guitarvydas/fab.git'
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

