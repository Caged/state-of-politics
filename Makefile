STATE_FIPS = \
	01|alabama \
	02|alaska \
	04|arizona \
	05|arkansas \
	06|california \
	08|colorado \
	09|connecticut \
	10|delaware \
	11|district_of_columbia \
	12|florida \
	13|georgia \
	15|hawaii \
	16|idaho \
	17|illinois \
	18|indiana \
	19|iowa \
	20|kansas \
	21|kentucky \
	22|louisiana \
	23|maine \
	24|maryland \
	25|massachusetts \
	26|michigan \
	27|minnesota \
	28|mississippi \
	29|missouri \
	30|montana \
	31|nebraska \
	32|nevada \
	33|new_hampshire \
	34|new_jersey \
	35|new_mexico \
	36|new_york \
	37|north_carolina \
	38|north_dakota \
	39|ohio \
	40|oklahoma \
	41|oregon \
	42|pennsylvania \
	44|rhode_island \
	45|south_carolina \
	46|south_dakota \
	47|tennessee \
	48|texas \
	49|utah \
	50|vermont \
	51|virginia \
	53|washington \
	54|west_virginia \
	55|wisconsin \
	56|wyoming

all: all_house all_senate
################################################################################
# GENERATE STATE TARGETS
################################################################################
define CHAMBER_TARGETS_TEMPLATE
data/shp/$(word 2,$(subst |, ,$(state)))_house.shp: data/gz/house/tl_2015_$(word 1,$(subst |, ,$(state)))_sldl.zip
data/shp/$(word 2,$(subst |, ,$(state)))_senate.shp: data/gz/senate/tl_2015_$(word 1,$(subst |, ,$(state)))_sldu.zip
endef

$(foreach state,$(STATE_FIPS),$(eval $(CHAMBER_TARGETS_TEMPLATE)))

all_house: $(foreach T,$(STATE_FIPS),data/shp/$(word 2,$(subst |, ,$(T)))_house.shp)
all_senate: $(foreach T,$(STATE_FIPS),data/shp/$(word 2,$(subst |, ,$(T)))_senate.shp)

################################################################################
# SHAPEFILES: META
################################################################################
data/shp/%.shp:
	 rm -rf $(basename $@)
	 mkdir -p $(basename $@)
	 tar --exclude="._*" -xzm -C $(basename $@) -f $<

	 for file in `find $(basename $@) -name '*.shp'`; do \
		 ogr2ogr -dim 2 -f 'ESRI Shapefile' -t_srs 'EPSG:4326' $(basename $@).$${file##*.} $$file; \
		 chmod 644 $(basename $@).$${file##*.}; \
	 done
	 rm -rf $(basename $@)

data/gz/house/%.zip:
	 mkdir -p $(dir $@)
	 curl 'ftp://ftp2.census.gov/geo/tiger/TIGER2015/SLDL/$(notdir $@)' -o $@.download
	 mv $@.download $@

data/gz/senate/%.zip:
	 mkdir -p $(dir $@)
	 curl 'ftp://ftp2.census.gov/geo/tiger/TIGER2015/SLDU/$(notdir $@)' -o $@.download
	 mv $@.download $@
