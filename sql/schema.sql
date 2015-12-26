CREATE TABLE openstates_data(
	"leg_id" text NOT NULL,
	"full_name" text NOT NULL,
	"first_name" text,
	"middle_name" text,
	"last_name" text,
	"suffixes" text ,
	"nickname" text ,
	"active" boolean NOT NULL,
	"state" text NOT NULL,
	"chamber" text ,
	"district" text ,
	"party" text ,
	"transparencydata_id" text ,
	"photo_url" text,
	"created_at" timestamp without time zone,
	"updated_at" timestamp without time zone
);
