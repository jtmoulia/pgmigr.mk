export PGUSER			= postgres
export PGHOST			= localhost
export PGDATABASE		= postgres
export PGPORT			= 5432
export MIGRATION_SOURCE_DIR	= db/migrations
export MIGRATION_TARGET_DIR	= .migrations

include pgmigr.mk
