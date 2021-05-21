# -------------------------------------------------------------------------------------------------
# R Codes to reproduce the results on paper:
# PENALIZED POWER PROPERTIES OF THE NORMALITY TESTS IN THE PRESENCE OF OUTLIERS

# Created by: Mustafa Cavus in Apr 24, 2021
# Contact: mustafacavus@eskisehir.edu.tr
# -------------------------------------------------------------------------------------------------
# Example I
export_data <- data.frame(value = c(80.139, 58.153, 110.137, 304.556, 172.599, 0.0230, 
                                    38.129, 198.344, 175.034, 379.846, 17.832, 23.888, 
                                    1394.191, 180.943, 6.663, 8.606, 194.459, 84.509),
                          city = c("Amasya", "Artvin", "Bolu", "Corum", "Giresun", 
                                   "Gumushane", "Kastamonu",  "Ordu", "Rize", "Samsun",
                                   "Sinop", "Tokat", "Trabzon", "Zonguldak", "Bayburt",
                                   "Bartin", "Karabuk", "Duzce"))

# Figure 1
outlier_ind1 <- which(export_data$value > (summary(export_data$value)[5] + (1.5 * IQR(export_data$value))))
boxplot(export_data$value, export_data$value[-c(outlier_ind1)],
        names = c("with outliers", "without outliers"),
        ylab = "Export amounts in Euro")

# Table IV
library(PoweR)
statcompute(0021, export_data$value)$pvalue
statcompute(0001, export_data$value)$pvalue
statcompute(0022, export_data$value)$pvalue
statcompute(0002, export_data$value)$pvalue
statcompute(0007, export_data$value)$pvalue
statcompute(0017, export_data$value)$pvalue
statcompute(0033, export_data$value)$pvalue
statcompute(0009, export_data$value)$pvalue
statcompute(0016, export_data$value)$pvalue
statcompute(0008, export_data$value)$pvalue

statcompute(0021, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0001, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0022, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0002, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0007, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0017, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0033, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0009, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0016, export_data$value[-c(outlier_ind1)])$pvalue
statcompute(0008, export_data$value[-c(outlier_ind1)])$pvalue


# Example II
alcohol_level <- data.frame(hour = seq(0, 23, 1),
                            level = c(1132, 1356, 1011, 718, 410, 287, 213, 200, 96, 
                                      58, 69, 39, 59, 45, 53, 70, 95, 130, 121, 146, 
                                      166, 131, 114, 159))

# Figure 2
outlier_ind2 <- which(alcohol_level$level > (summary(alcohol_level$level)[5] + (1.5 * IQR(alcohol_level$level))))
boxplot(alcohol_level$level, alcohol_level$level[-c(outlier_ind2)],
        names = c("with outliers", "without outliers"),
        ylab = "Alcohol levels")

# Table VI
statcompute(0021, alcohol_level$level)$pvalue
statcompute(0001, alcohol_level$level)$pvalue
statcompute(0022, alcohol_level$level)$pvalue
statcompute(0002, alcohol_level$level)$pvalue
statcompute(0007, alcohol_level$level)$pvalue
statcompute(0017, alcohol_level$level)$pvalue
statcompute(0033, alcohol_level$level)$pvalue
statcompute(0009, alcohol_level$level)$pvalue
statcompute(0016, alcohol_level$level)$pvalue
statcompute(0008, alcohol_level$level)$pvalue

statcompute(0021, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0001, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0022, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0002, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0007, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0017, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0033, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0009, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0016, alcohol_level$level[-c(outlier_ind2)])$pvalue
statcompute(0008, alcohol_level$level[-c(outlier_ind2)])$pvalue

