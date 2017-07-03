#
# Simple Makefile for OpenSCAD project.
#
PROJECT = piparts

VERSION = $(shell grep -m1 'Version = ' $(PROJECT).scad | cut -d\"  -f 2)

BRANCH = $(shell git branch | grep '* ' | cut -d\  -f 2)

status:
	git status

save:
	git commit -am "Quick Save"
	git push origin $(BRANCH)

