# Define the input variables
avgPurchaseValue <- 6.45
numPurchasesPerWeek <- 3
numWeeksPerYear <- 52
avgCustomerLifespan <- 5
profitMargin <- 0.25
# Create an empty dataframe to store the CLV values
clv_df <- data.frame(year = 1:avgCustomerLifespan, clv = rep(0, avgCustomerLifespan))
# Calculate the CLV for each year and store it in the dataframe
for (i in 1:avgCustomerLifespan) {
    annualRevenue <- avgPurchaseValue * numPurchasesPerWeek * numWeeksPerYear
    totalRevenue <- annualRevenue * avgCustomerLifespan
    clv <- totalRevenue * (1 + profitMargin)
    clv_df$clv[i] <- clv
}
# Print the dataframe
clv_df