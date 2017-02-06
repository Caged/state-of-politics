data/raw/results.txt:
	mkdir -p $(dir $@)
	curl "https://dataverse.harvard.edu/api/access/datafile/2432023?format=tab&gbrecs=true" -o $@.download
	mv $@.download $@

# OPENSTATES_ARCHIVE_DATE=2015-12-09
#
# all: all_house all_senate all_openstates
#
# ################################################################################
# # MAKE TARGET GENERATION
# ################################################################################
# define CHAMBER_TARGETS_TEMPLATE
# data/shp/$(word 3,$(subst |, ,$(state)))_house.shp: data/gz/house/tl_2015_$(word 1,$(subst |, ,$(state)))_sldl.zip
# data/shp/$(word 3,$(subst |, ,$(state)))_senate.shp: data/gz/senate/tl_2015_$(word 1,$(subst |, ,$(state)))_sldu.zip
# endef
#
# define OPENSTATES_TARGETS_TEMPLATE
# data/csv/$(word 3,$(subst |, ,$(state))).csv: data/gz/openstates/$(OPENSTATES_ARCHIVE_DATE)-$(word 2,$(subst |, ,$(state)))-csv.zip
# endef
#
# $(foreach state,$(STATE_FIPS),$(eval $(CHAMBER_TARGETS_TEMPLATE)))
# $(foreach state,$(STATE_FIPS),$(eval $(OPENSTATES_TARGETS_TEMPLATE)))
#
# all_house: $(foreach T,$(STATE_FIPS),data/shp/$(word 3,$(subst |, ,$(T)))_house.shp)
# all_senate: $(foreach T,$(STATE_FIPS),data/shp/$(word 3,$(subst |, ,$(T)))_senate.shp)
# all_openstates: $(foreach T,$(STATE_FIPS),data/csv/$(word 3,$(subst |, ,$(T))).csv)
#
# ################################################################################
# # EXTRACTION AND PREP
# ################################################################################
# data/shp/%.shp:
# 	 rm -rf $(basename $@)
# 	 mkdir -p $(basename $@)
# 	 tar --exclude="._*" -xzm -C $(basename $@) -f $<
#
# 	 for file in `find $(basename $@) -name '*.shp'`; do \
# 		 ogr2ogr -dim 2 -f 'ESRI Shapefile' -t_srs 'EPSG:4326' $(basename $@).$${file##*.} $$file; \
# 		 chmod 644 $(basename $@).$${file##*.}; \
# 	 done
# 	 rm -rf $(basename $@)
#
# data/csv/%.csv:
# 	rm -rf $(basename $@)
# 	mkdir -p $(basename $@)
# 	tar --exclude="._*" -xzm -C $(basename $@) -f $<
#
# 	for file in `find $(basename $@) -name '*_legislators.csv'`; do \
# 		mv $$file $(basename $@)-temp.csv; \
# 	done
#
# 	script/normalize-district-ids $(basename $@)-temp.csv $*
# 	rm $(basename $@)-temp.csv
# 	rm -rf $(basename $@)
#
# ################################################################################
# # DOWNLOADING
# ################################################################################
# data/gz/house/%.zip:
# 	 mkdir -p $(dir $@)
# 	 curl 'ftp://ftp2.census.gov/geo/tiger/TIGER2015/SLDL/$(notdir $@)' -o $@.download
# 	 mv $@.download $@
#
# data/gz/senate/%.zip:
# 	 mkdir -p $(dir $@)
# 	 curl 'ftp://ftp2.census.gov/geo/tiger/TIGER2015/SLDU/$(notdir $@)' -o $@.download
# 	 mv $@.download $@
#
# data/gz/openstates/%.zip:
# 	 mkdir -p $(dir $@)
# 	 curl 'http://static.openstates.org/downloads/$(notdir $@)' -o $@.download
# 	 mv $@.download $@
