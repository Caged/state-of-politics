data/raw/state-legislative-election-returns-1967-2010.tsv:
	mkdir -p $(dir $@)
	curl "https://dataverse.harvard.edu/api/access/datafile/2432023?format=tab&gbrecs=true" -o $@.download
	mv $@.download $@

data/raw/state-legislative-election-returns-2011-2012.tsv:
	mkdir -p $(dir $@)
	curl "https://dataverse.harvard.edu/api/access/datafile/2436792?format=tab&gbrecs=true" -o $@.download
	mv $@.download $@

data/intermediate/state-legislative-election-returns-combined.tsv: data/raw/state-legislative-election-returns-1967-2010.tsv data/raw/state-legislative-election-returns-2011-2012.tsv
	mkdir -p $(dir $@)
	sed 1d $(word 2,$^) > $(word 2,$^).noheader
	cat $(word 1,$^) $(word 2,$^).noheader > $@
	rm $(word 2,$^).noheader

data/intermediate/debug.tsv: data/raw/state-legislative-election-returns-1967-2010.tsv data/raw/state-legislative-election-returns-2011-2012.tsv
	mkdir -p $(dir $@)
	(head -n 5 $(word 1,$^); head -n 5 $(word 2,$^)) > $@
