SERVICES := $(patsubst config/deploy.%.yml,%,$(wildcard config/deploy.*.yml))

.PHONY: $(SERVICES)

$(SERVICES):
	kamal accessory boot all -d $@
