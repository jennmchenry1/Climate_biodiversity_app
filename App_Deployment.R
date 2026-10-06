# install.packages(c("curl", "httr2", "rsconnect"))

library(rsconnect)
library(curl)
library(httr2)

setwd("C:/Users/Jenn/Dropbox/GITHUB/RShiny_Repos/")

# https://www.shinyapps.io/admin/#/dashboard
rsconnect::setAccountInfo(name='jennifermchenry',
                          token='8897D0299ECE4C97E70E32057D25B091',
                          secret='DRAs6HrZs5QWFwkqtOAEu6CRxxpsCMnswQr+luVd')

rsconnect::deployApp(appName = "Climate_biodiversity_app",account = "jennifermchenry",appDir = "Climate_biodiversity_app")

# 
# rsconnect::configureApp(appName = "nwa_kelp_app", size="large",account = "jennifermchenry",appDir = "Climate_biodiversity_app")

# rsconnect::showLogs(appName = "Climate_biodiversity_app", account = "jennifermchenry")

