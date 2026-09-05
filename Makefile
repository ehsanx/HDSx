.PHONY: snapshot

# Update renv.lock from the packages currently installed in the project library
snapshot:
	Rscript -e 'renv::snapshot()'
