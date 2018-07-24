library(rvest)
library(data.table)
library(tidyr)
library(stringr)
source("r/R/footystats_functions.r")

urls = list(
  csl_url = "https://footystats.org/china/chinese-super-league/matches",
  ireland1_url = "https://footystats.org/republic-of-ireland/premier-division/matches",
  allsvenskn_url = "https://footystats.org/sweden/allsvenskan/matches",
  brazil1_url = "https://footystats.org/brazil/serie-a/matches",
  eliteserien_url = "https://footystats.org/norway/eliteserien/matches",
  #epl1516_url = "https://footystats.org/england/premier-league/2015-2016/matches",
  finland1_url = "https://footystats.org/finland/veikkausliiga/matches",
  mls_url = "https://footystats.org/usa/mls/matches",
  superettan_url = "https://footystats.org/sweden/superettan/matches"
)

outpath = "data/"

leagues = c("csl","ireland1","sweden1","brazil1","norway1","finland1","mls","sweden2")

get_pred_haad(urls$csl_url,file.path(outpath,"csl" %>% paste0(".rds")))  
get_pred_haad(urls$csl_url,file.path("r/shiny","csl" %>% paste0(".rds")))  

mapply(get_pred_haad, urls, file.path(outpath, leagues %>% paste0(".rds")))

  