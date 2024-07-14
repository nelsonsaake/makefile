.PHONY: echo

ARGS = $(filter-out $@,$(MAKECMDGOALS))

plg:
	echo $(ARGS)