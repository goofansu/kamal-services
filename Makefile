TARGETS := $(patsubst config/deploy.%.yml,%,$(wildcard config/deploy.*.yml))
REBOOT_TARGETS := $(addprefix reboot-,$(TARGETS))

.PHONY: $(TARGETS) $(REBOOT_TARGETS)

$(TARGETS):
	kamal accessory boot all -d $@

$(REBOOT_TARGETS):
	kamal accessory reboot server -d $(patsubst reboot-%,%,$@)
