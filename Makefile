.PHONY: snapshot publish

# Update renv.lock from the packages currently installed in the project library
snapshot:
	Rscript -e 'renv::snapshot()'

# Render the site and push it to the gh-pages branch
publish:
	quarto publish gh-pages
