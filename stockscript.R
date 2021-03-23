# Import data
library(readxl)
reg <- read_excel("Capstone/Portfolio/reg.xlsx")
View(reg)
#Create data frame
YIELD <- reg$YIELD
SP500 <- reg$SP500
PMI <- reg$PMI
GDP <- reg$GDP
NASDAQ <- reg$NASDAQ
DOW <- reg$DOW
YEAR <- reg$Year
CPI <- reg$CPI
UNEMP <- reg$UNEMP
stock.df <- data.frame(YIELD, SP500, PMI, GDP, NASDAQ, DOW, YEAR, CPI, UNEMP)
# multiple linear regression
linreg.DOW <- lm(DOW ~ YIELD + CPI + UNEMP 
+ GDP + PMI + + YEAR, data=stock.df)
linreg.NASDAQ <- lm(NASDAQ ~ YIELD + CPI + UNEMP 
  + GDP + PMI + YEAR, data=stock.df)
linreg.SP500 <- lm(SP500 ~ YIELD + CPI + UNEMP 
+ GDP + PMI + YEAR, data=stock.df)