TARGETS := $(patsubst config/deploy.%.yml,%,$(wildcard config/deploy.*.yml))
REBOOT_ALL_TARGETS := $(addsuffix -all,$(addprefix reboot-,$(TARGETS)))
REBOOT_SERVER_TARGETS := $(addsuffix -server,$(addprefix reboot-,$(TARGETS)))

.PHONY: $(TARGETS) $(REBOOT_ALL_TARGETS) $(REBOOT_SERVER_TARGETS)

$(TARGETS):
	kamal accessory boot all -d $@

$(REBOOT_ALL_TARGETS):
	kamal accessory reboot all -d $(patsubst reboot-%-all,%,$@)

$(REBOOT_SERVER_TARGETS):
	kamal accessory reboot server -d $(patsubst reboot-%-server,%,$@)
