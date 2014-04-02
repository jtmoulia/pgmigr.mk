# pgmigr.mk

Stupid simple postgres migrations.

This provides Makefile rules for keeping a database up to date against
a set of migrations. It's pretty mindless: it will run every
$MIGRATION_SOURCE_DIR/*.sql file, and `touch` using the same file
in $MIGRATION_TARGET_DIR. If a migration is changed, it will be rerun.

## Usage

Add `pigmigr.mk` to the project's root, and add include `pgmigr.mk` to
a `Makefile`. `make migrate` will run any new migrations.

See `Makefile` for an example and a list of config variables.

