# processing 2025 assessment model output to SIS

# Yelloweye Rockfish
yelloweye <- r4ss::SS_output("https://raw.githubusercontent.com/rclairer/Sebastes_ruberrimus_2025/refs/heads/main/model/2025_base_model")
save(yelloweye, file = "output/yelloweye2025.Rdata")

# # optionally load files created above instead of re-running SS_output()
# load("output/yelloweye2025.Rdata")

SIS_dir <- "SIS_info_2025"
# dir.create(SIS_dir)
year <- 2025

# Yelloweye Rockfish
r4ss::get_SIS_info(model = yelloweye,
  dir = SIS_dir,
  stock = "Yelloweye rockfish",
  month = 6,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "vladlena.gertseva@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "4.Minor gaps in some sector(s)",
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "2.Random variation, not mechanistic"
)

# Quillback Rockfish (CA)
quillback <- r4ss::SS_output("https://raw.githubusercontent.com/pfmc-assessments/CA_quillback_rockfish_2025/refs/heads/main/models/6_0_1_postStarBase/", printstats = FALSE, verbose = FALSE)
save(quillback, file = "output/quillback2025.Rdata")

r4ss::get_SIS_info(model = quillback,
  dir = SIS_dir,
  stock = "Quillback Rockfish",
  month = 6,
  sciencecenter = "NWFSC",
  Mgt_Council = "PFMC",
  SpawnOutputLabel = "Billions of eggs",
  contact = "brian.langseth@noaa.gov",
  review_result = "Full Acceptance",
  catch_input_data = "4.Minor gaps in some sector(s)",
  abundance_input_data = "3.Limited fishery independent",
  bio_input_data = "3.Mostly empirical estimates",
  comp_input_data = "3.Gaps but supports age-structured assessment",
  ecosystem_linkage = "2.Random variation, not mechanistic"
)
