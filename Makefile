data/raw/results.txt:
	mkdir -p $(dir $@)
	curl "https://dataverse.harvard.edu/api/access/datafile/2432023?format=tab&gbrecs=true" -o $@.download
	mv $@.download $@

