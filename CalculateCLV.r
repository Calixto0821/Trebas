# Define the input variables
avgPurchaseValue <- 6.45
numPurchasesPerWeek <- 3
numWeeksPerYear <- 52
avgCustomerLifespan <- 5
profitMargin <- 0.25
# Calculate the CLV
annualRevenue <- avgPurchaseValue * numPurchasesPerWeek * numWeeksPerYear
totalRevenue <- annualRevenue * avgCustomerLifespan
clv <- totalRevenue * (1 + profitMargin)
# Print the results
cat("Annual revenue: $", round(annualRevenue, 2), "\n")
cat("Total revenue: $", round(totalRevenue, 2), "\n")
cat("CLV: $", round(clv, 2))