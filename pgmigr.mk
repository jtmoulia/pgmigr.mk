MIGRATION_SOURCE_DIR ?= migrations
MIGRATION_TARGET_DIR ?= .migrations

MIGRATION_SOURCES = $(sort $(wildcard $(MIGRATION_SOURCE_DIR)/*.sql))
MIGRATION_TARGETS = $(addprefix $(MIGRATION_TARGET_DIR)/, $(notdir $(MIGRATION_SOURCES)))

PSQL = psql

.PHONY += migrate

.migrations:
	mkdir -p $@

migrate: $(MIGRATION_TARGETS)

$(MIGRATION_TARGET_DIR)/%.sql:  $(MIGRATION_SOURCE_DIR)/%.sql .migrations
	$(PSQL) -f $<
	touch $@
