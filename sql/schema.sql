CREATE TABLE elections_1967_2010(
	"caseid" TEXT NOT NULL,
	"v01" NUMERIC NOT NULL,
	"v02" TEXT NOT NULL,
	"v03" DECIMAL NOT NULL,
	"v04" DECIMAL NOT NULL,
	"v05" NUMERIC,
	"v06" NUMERIC,
	"v07" DECIMAL NOT NULL,
	"v08" TEXT,
	"v09" BIGINT,
	"v10a" BIGINT,
	"v10b" BIGINT,
	"v10c" BIGINT,
	"v10d" BIGINT,
	"v10" DECIMAL,
	"v11" TEXT NOT NULL,
	"v12" NUMERIC,
	"v13" NUMERIC,
	"v14" BIGINT NOT NULL,
	"v15" BIGINT NOT NULL,
	"v16" TEXT NOT NULL,
	"v17" BOOLEAN NOT NULL,
	"v18" BIGINT NOT NULL,
	"v19" TEXT,
	"v20" BIGINT NOT NULL,
	"v21" BIGINT NOT NULL,
	"v22" NUMERIC,
	"v23" BIGINT,
	"v24" BOOLEAN NOT NULL,
	"v25" BIGINT NOT NULL,
	"v26" NUMERIC,
	"v27" NUMERIC,
	"v28" NUMERIC,
	"v29" DECIMAL,
	"v30" DECIMAL,
	"v31" DECIMAL,
	"v32" DECIMAL,
	"v33" DECIMAL,
	"v34" DECIMAL,
	"v35" DECIMAL,
	"v36" DECIMAL,
	"v37" DECIMAL,
	"v38" TEXT,
	"v39" TEXT,
	"v40" BOOLEAN,
	"v41" BOOLEAN NOT NULL,
	"v42" BOOLEAN NOT NULL,
	"v43" TEXT,
	"v44" TEXT,
	"v45" TEXT,
	"v46" TEXT,
	"v47" TEXT,
	"v48" TEXT,
	"v49" TEXT,
	"v50" TEXT,
	"v51" TEXT,
	"v52" TEXT,
	"v53" TEXT,
	"v54" TEXT,
	"v55" TEXT,
	"v56" TEXT,
	"v57" TEXT,
	"v58" TEXT
)
WITH (
  OIDS=FALSE
);

CREATE TABLE elections_2011_2012(
	"caseid" BIGINT NOT NULL,
	"v01" DECIMAL NOT NULL,
	"v02" TEXT NOT NULL,
	"v03" DECIMAL NOT NULL,
	"v04" DECIMAL NOT NULL,
	"v05" NUMERIC,
	"v06" NUMERIC,
	"v07" DECIMAL NOT NULL,
	"v08" TEXT,
	"v09" BIGINT,
	"v10a" TEXT,
	"v10b" TEXT,
	"v10c" TEXT,
	"v12" NUMERIC,
	"v13" NUMERIC,
	"v14" BIGINT NOT NULL,
	"v15" TEXT,
	"v16" TEXT NOT NULL,
	"v17" BOOLEAN NOT NULL,
	"v19" TEXT NOT NULL,
	"v20" BIGINT NOT NULL,
	"v21" BIGINT NOT NULL,
	"v22" NUMERIC,
	"v23" BIGINT,
	"v24" BOOLEAN NOT NULL,
	"v41" BOOLEAN NOT NULL,
	"v42" BOOLEAN NOT NULL,
	"v43" TEXT,
	"v44" TEXT NOT NULL,
	"v45" TEXT,
	"v46" TEXT,
	"v47" TEXT,
	"v48" TEXT,
	"v49" TEXT,
	"v50" TEXT,
	"v51" TEXT,
	"v52" TEXT,
	"v53" TEXT,
	"v54" TEXT,
	"v55" TEXT,
	"v56" TEXT,
	"v57" TEXT,
	"v58" TEXT
)
WITH (
  OIDS=FALSE
);

comment on column elections_1967_2010.caseid is 'Unique Case Identification Number';
comment on column elections_1967_2010.v01 is 'Number of State in Alphabetical List';
comment on column elections_1967_2010.v02 is 'State postal Abbreviation';
comment on column elections_1967_2010.v03 is 'State FIPS Code';
comment on column elections_1967_2010.v04 is 'ICPSR State Code';
comment on column elections_1967_2010.v05 is 'Year of Election';
comment on column elections_1967_2010.v06 is 'Month of Election';
comment on column elections_1967_2010.v07 is 'Senate or House';
comment on column elections_1967_2010.v08 is 'District Name';
comment on column elections_1967_2010.v09 is 'State Legislative District Number';
comment on column elections_1967_2010.v10a is 'District Post Position that Identifies a Geographic Locale';
comment on column elections_1967_2010.v10b is 'District Post Position That Identifies a Post in a Multimember District (MMD)';
comment on column elections_1967_2010.v10c is 'District Post Position That Identifies Both a Geographic Locale and a Post in a Multimember District';
comment on column elections_1967_2010.v10d is 'District Post Position That Identifies a Post in a Multimember District, Artificial';
comment on column elections_1967_2010.v10 is 'Summary Post Position';
comment on column elections_1967_2010.v11 is 'Concatenated District Identifier';
comment on column elections_1967_2010.v12 is 'District Type';
comment on column elections_1967_2010.v13 is 'Number of Winners for Position';
comment on column elections_1967_2010.v14 is 'Length of Term by Law';
comment on column elections_1967_2010.v15 is 'Actual Length of Term';
comment on column elections_1967_2010.v16 is 'Election Type Code';
comment on column elections_1967_2010.v17 is 'Election Determines a Sitting Legislator';
comment on column elections_1967_2010.v18 is 'Unique Candidate ID Code';
comment on column elections_1967_2010.v19 is 'Candidate’s Full Standardized Name';
comment on column elections_1967_2010.v20 is 'Detailed Party Code';
comment on column elections_1967_2010.v21 is 'Simplified Party Code';
comment on column elections_1967_2010.v22 is 'Incumbency Dummy (1=Incumbent, 0=Non-incumbent)';
comment on column elections_1967_2010.v23 is 'Candidate’s Vote Total';
comment on column elections_1967_2010.v24 is 'Election Winner';
comment on column elections_1967_2010.v25 is 'Number of Candidates in Election';
comment on column elections_1967_2010.v26 is 'Number of Democrats in Election';
comment on column elections_1967_2010.v27 is 'Number of Republicans in Election';
comment on column elections_1967_2010.v28 is 'Number of Other Candidates in Election';
comment on column elections_1967_2010.v29 is 'Total Votes Cast in Election';
comment on column elections_1967_2010.v30 is 'Total Votes Cast for Democrats in Election';
comment on column elections_1967_2010.v31 is 'Total Votes Cast for Republicans in Election';
comment on column elections_1967_2010.v32 is 'Total Votes Cast for Others in Election';
comment on column elections_1967_2010.v33 is 'Highest V ote Percentage in Election';
comment on column elections_1967_2010.v34 is 'Second Highest V ote Percentage in Election';
comment on column elections_1967_2010.v35 is 'Percent Margin of Victory';
comment on column elections_1967_2010.v36 is 'Candidate’s Percent of the Vote';
comment on column elections_1967_2010.v37 is 'Difference between Candidate’s Percentage and Winner’s Percentage Variables to Aid in Error Checking';
comment on column elections_1967_2010.v38 is 'Candidate’s Name Used in ICPSR #8907 (i.e., which covered 1967 to 1989)';
comment on column elections_1967_2010.v39 is 'Candidate’s Name Used in ICPSR #21480 (i.e., which covered 1967 to 2003)';
comment on column elections_1967_2010.v40 is 'Dummy: Name Adjusted for ICPSR #21480 (1=Yes, 0=No)';
comment on column elections_1967_2010.v41 is 'Information for Election is Incomplete';
comment on column elections_1967_2010.v42 is 'Dummy: Uncertainty Exists for Some Data for This Case';
comment on column elections_1967_2010.v43 is 'Specifies Variable There is Uncertainty About';
comment on column elections_1967_2010.v44 is 'Last Name of Candidate';
comment on column elections_1967_2010.v45 is 'First Name of Candidate';
comment on column elections_1967_2010.v46 is 'First Middle Name Component of Candidate';
comment on column elections_1967_2010.v47 is 'Second Middle Name Component of Candidate';
comment on column elections_1967_2010.v48 is 'Third Middle Name Component of Candidate';
comment on column elections_1967_2010.v49 is 'Fourth Middle Name Component of Candidate';
comment on column elections_1967_2010.v50 is 'Nickname of Candidate';
comment on column elections_1967_2010.v51 is 'Suffix of Candidate';
comment on column elections_1967_2010.v52 is 'Prefix or Title of Candidate';
comment on column elections_1967_2010.v53 is 'Number in Candidate’s Name to Differentiate from Other Candidates';
comment on column elections_1967_2010.v54 is 'Alternative Last Name for Candidate';
comment on column elections_1967_2010.v55 is 'Type of Alternative Last Name Specified in v51 Above';
comment on column elections_1967_2010.v56 is 'State Legislative District Number from ICPSR #21480';
comment on column elections_1967_2010.v57 is 'State Legislative District Post Number from ICPSR #21480';
comment on column elections_1967_2010.v58 is 'State Legislative District Name from ICPSR #21480';
