# processing 2023 assessment model output to SIS
# not yet using relative paths because so far this is only run by Ian on his computer

# Pacific Hake (already processed)
# "\\\\nwcfile.nmfs.local/fram/Assessments/Archives/Pacific Hake_Whiting/PWhiting2023"

# Canary
canary <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/assessments/Archive_temp/CanaryRF_2023/2_base_model/7_3_5_reweight")
save(canary, file = "output/canary2023.Rdata")

# Copper SCA and NCA
# read output from model Copper Rockfish in (Southern CA)
copper_sca <- r4ss::SS_output("\\\\nwcfile/FRAM/Assessments/Archive_temp/CopperRF_2023/2_base_model/sca/15.0_south_post_star_base")
save(copper_sca, file = "c:/github/PFMC-SIS/output/copper_sca_2023.Rdata")
copper_nca <- r4ss::SS_output("\\\\nwcfile/FRAM/Assessments/Archive_temp/CopperRF_2023/2_base_model/nca/10.0_north_post_star_base")
save(copper_nca, file = "c:/github/PFMC-SIS/output/copper_nca_2023.Rdata")

# Petrale 
petrale <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/Assessments/Archive_temp/Petrale_sole_2023/2_base_model")
save(petrale, file = "c:/github/PFMC-SIS/output/petrale_2023.Rdata")

# Black WA, OR, CA
black_wa <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/Assessments/Archive_temp/BlackRF_2023/2_base_model/Washington")
save(black_wa, file = "c:/github/PFMC-SIS/output/black_wa_2023.Rdata")
black_or <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/Assessments/Archive_temp/BlackRF_2023/2_base_model/Oregon")
save(black_or, file = "c:/github/PFMC-SIS/output/black_or_2023.Rdata")
black_nca <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/Assessments/Archive_temp/BlackRF_2023/2_base_model/California/North")
save(black_nca, file = "c:/github/PFMC-SIS/output/black_nca_2023.Rdata")
black_cca <- r4ss::SS_output("\\\\nwcfile.nmfs.local/fram/Assessments/Archive_temp/BlackRF_2023/2_base_model/California/Central")
save(black_cca, file = "c:/github/PFMC-SIS/output/black_cca_2023.Rdata")

# Rex Sole
rex <- r4ss::SS_output("\\\\nwcfile/FRAM/Assessments/Archive_temp/Rex_sole_2023/2_base_model/run")
save(rex, file = "c:/github/PFMC-SIS/output/rex_2023.Rdata")

# Shortspine Thornyhead
sst <- r4ss::SS_output("\\\\nwcfile/FRAM/Assessments/Archive_temp/Shortspine_thornyhead_2023/2_base_model")
save(sst, file = "c:/github/PFMC-SIS/output/rex_2023.Rdata")

sablefish <- r4ss::SS_output("\\\\nwcfile/FRAM/Assessments/Archive_temp/Sablefish_2023/2_base_model")
save(sablefish, file = "c:/github/PFMC-SIS/output/sablefish_2023.Rdata")

# # optionally load files created above instead of re-running SS_output()
# load("c:/github/PFMC-SIS/output/canary2023.Rdata")
# load(file = "c:/github/PFMC-SIS/output/petrale_2023.Rdata")
# load(file = "c:/github/PFMC-SIS/output/canary_2023.Rdata")

SIS_dir <- "c:/github/PFMC-SIS/SIS_info_2023" # not sure where this should go yet
dir.create(SIS_dir)
year <- 2023

# Copper SCA
r4ss::get_SIS_info(model = copper_sca,
  dir = SIS_dir,
  stock = "Copper_SCA",
  month = 5,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Chantel.Wetzel@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "4.Minor gaps in some sector(s)",
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Copper NCA
r4ss::get_SIS_info(model = copper_nca,
  dir = SIS_dir,
  stock = "Copper_NCA",
  month = 5,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Melissa.Monk@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "4.Minor gaps in some sector(s)",
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Canary
r4ss::get_SIS_info(model = canary,
  dir = SIS_dir,
  stock = "Canary Rockfish",
  month = 7,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Millions of eggs",
  contact = "Brian.Langseth@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "5.Near complete knowledge",
  abundance_input_data = "4.Comprehensive fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "4.Supports fishery composition",
  ecosystem_linkage = "2.Random variation not mechanistic"
)
	 			

# Petrale
r4ss::get_SIS_info(model = petrale,
  dir = SIS_dir,
  stock = "Petrale Sole",
  month = 7,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Trillions of eggs",
  contact = "Ian.Taylor@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "5.Near complete knowledge",
  abundance_input_data = "4.Comprehensive fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "5.Very complete",
  ecosystem_linkage = "2.Random variation not mechanistic"
)
	 			
# Black Rockfish WA
r4ss::get_SIS_info(model = black_wa,
  dir = SIS_dir,
  stock = "Black Rockfish WA",
  month = 7,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Jason.Cope@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "3.Minor gaps across sectors",		
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Black Rockfish OR
r4ss::get_SIS_info(model = black_or,
  dir = SIS_dir,
  stock = "Black Rockfish OR",
  month = 7,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Jason.Cope@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "3.Minor gaps across sectors",		
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Black Rockfish Central CA
r4ss::get_SIS_info(model = black_nca,
  dir = SIS_dir,
  stock = "Black Rockfish Northern CA",
  month = 7,
  sciencecenter = "SWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Edward.Dick@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "3.Minor gaps across sectors",		
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Black Rockfish Central CA
r4ss::get_SIS_info(model = black_cca,
  dir = SIS_dir,
  stock = "Black Rockfish Central CA",
  month = 7,
  sciencecenter = "SWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "Edward.Dick@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "3.Minor gaps across sectors",		
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "1.Informative or used to process input data"
)

# Shortspine Thornyhead
r4ss::get_SIS_info(model = sst,
  dir = SIS_dir,
  stock = "Shortspine Thornyhead",
  assessment_type = "Stock Monitoring Updates",
  month = 5,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Millions of eggs",
  contact = "Joshua Zahner <jzahner@uw.edu>",
  review_result = "Full Acceptance",
  catch_input_data = "5.Near complete knowledge",			 	 	
  abundance_input_data = "4.Comprehensive fishery independent",
  bio_input_data = "2.Empirical and proxy-based",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "2.Random variation not mechanistic"
)

# Rex Sole
r4ss::get_SIS_info(model = rex,
  dir = SIS_dir,
  stock = "Rex Sole",
  assessment_type = "Stock Monitoring Updates",
  month = 5,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Millions of eggs",
  contact = "Markus Min <mmin@uw.edu>",
  review_result = "Full Acceptance",
  catch_input_data = "5.Near complete knowledge",
  abundance_input_data = "4.Comprehensive fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "2.Random variation not mechanistic"
)


# Sablefish
r4ss::get_SIS_info(model = sablefish,
  dir = SIS_dir,
  stock = "Sablefish",
  assessment_type = "Stock Monitoring Updates",
  month = 8,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "mt",
  contact = "Kelli.Johnson@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "5.Near complete knowledge",
  abundance_input_data = "4.Comprehensive fishery independent",
  bio_input_data = "4.Track changes over time",
  comp_input_data = "4.Support fishery composition",
  ecosystem_linkage = "3.Direct Linkage(s)"
)
