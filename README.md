# Project description

*(done by Dmitri, Daniel, and Ivan)*



## Objective
Objective of this project is to analyze panel data from Rosstat (the Russian Federal State Statistics Service) by conducting Least Squares Dummy Variable (LSDV) and pooled regression analyses. This analysis aims to uncover significant relationships and trends within the dataset

## Data 
Data consists of multiple variables from Rosstat. It is a panel with *period* and *region* indeces. The aim is to get the best set of estimators for target variable __work_force__

__Columns__
Уровень инновационной активности, в процентах (%)
Level of Innovation Activity, in Percent (%)

Индекс производительности труда по Российской Федерации, по субъектам Российской Федерации в 2008-2022 г.г. (в % к предыдущему году)
Labor Productivity Index for the Russian Federation, by Regions, 2008-2022 (as % of the previous year)

Уровень бедности, в процентах (%) от общей численности населения
Poverty Rate, in Percent (%) of the Total Population

Индекс промышленного производства в % к соответствующему периоду предыдущего года
Industrial Production Index as % of the Corresponding Period of the Previous Year

Распределение объема работ, выполненных по виду деятельности "Строительство" организациями различных форм собственности (без учета субъектов малого предпринимательства) (тыс. рублей)
Distribution of the Volume of Work Completed in the "Construction" Sector by Organizations of Various Forms of Ownership (excluding small businesses) (thousand rubles)

Среднедушевые денежные доходы населения по субъектам Российской Федерации, руб./месяц
Per Capita Monetary Income by Regions of the Russian Federation, rubles/month

Численность занятых в возрасте 15 лет и старше по субъектам Российской Федерации (по данным выборочных обследований), тыс. человек
Number of Employed Persons Aged 15 and Older by Regions of the Russian Federation (based on sample surveys), thousand people

Уровень занятости населения в возрасте 15 лет и старше по субъектам Российской Федерации (по данным выборочных обследований), в процентах
Employment Rate of the Population Aged 15 and Older by Regions of the Russian Federation (based on sample surveys), in Percent

Прирост высокопроизводительных рабочих мест по субъектам Российской Федерации за 2012-2023 гг., тыс. единиц
Increase in High-Productivity Jobs by Regions of the Russian Federation for 2012-2023, thousand units

Индекс выпуска товаров и услуг по базовым видам экономической деятельности по субъектам Российской Федерации и федеральным округам (к соответствующему периоду предыдущего года, %)
Index of Output of Goods and Services by Basic Economic Activities by Regions of the Russian Federation and Federal Districts (as % of the corresponding period of the previous year)

Количество собственных легковых автомобилей на 1000 человек населения по субъектам Российской Федерации (на конец года; штук)
Number of Private Cars per 1000 People by Regions of the Russian Federation (end of year; units)

Демографические показатели предприятий по субъектам Российской Федерации в 2018г. (единиц) Количество активных предприятий
Demographic Indicators of Enterprises by Regions of the Russian Federation in 2018 (units) Number of Active Enterprises

Демографические показатели предприятий по субъектам Российской Федерации в 2018г. (единиц) Количество умерших предприятий
Demographic Indicators of Enterprises by Regions of the Russian Federation in 2018 (units) Number of Closed Enterprises

Грузооборот автомобильного транспорта по субъектам Российской Федерации (млн.тонно-км)
Freight Turnover of Road Transport by Regions of the Russian Federation (million ton-km)

Грузооборот автомобильного транспорта на коммерческой основе (тыс. тонно-км)
Freight Turnover of Road Transport on a Commercial Basis (thousand ton-km)

Доля внутренних затрат на исследования и разработки, в процентах к валовому региональному продукту (ВРП)
Share of Internal Expenditures on Research and Development as a Percentage of Gross Regional Product (GRP)

etc...


## Plan
### Data Preprocessing

Load the panel data from Rosstat into the notebook.
Perform initial data inspection to understand the structure, types of variables, and any missing values or inconsistencies.
Data Cleaning

Handle missing data by using appropriate imputation techniques or removing incomplete records.
Address inconsistencies and outliers by standardizing formats, correcting errors, and applying appropriate transformations.
Variable Selection and Transformation

Perform EDA to visualize data distributions, correlations, and trends.
Generate summary statistics to get an overview of the dataset.
Data Preparation for Regression Analysis

Create dummy variables for categorical data.
Ensure the dataset is formatted correctly for regression analysis, with appropriate indexing for panel data.


### Regression Analysis
Define the regression models to be used:
Pooled Regression Model: Assumes constant coefficients across entities and time periods.
LSDV Model: Incorporates dummy variables to capture entity-specific effects.
Pooled Regression Analysis

Implement the pooled regression model using the preprocessed data.
Interpret the results, focusing on the significance and impact of each predictor variable.
LSDV Regression Analysis

Implement the LSDV model, including the creation and incorporation of dummy variables for each entity.
Interpret the results, highlighting the differences in entity-specific effects and the overall model performance compared to the pooled regression.
Model Comparison and Validation

Compare the results of the pooled regression and LSDV models.
Validate model assumptions (e.g., homoscedasticity, multicollinearity, autocorrelation).
Assess model fit and predictive performance using appropriate metrics (e.g., R-squared, AIC, BIC).
Results Interpretation and Conclusion

Summarize key findings from both regression analyses.
Discuss the implications of the results in the context of the data from Rosstat.
Provide recommendations for future research or policy based on the analysis outcomes.
By following these structured steps, this project will deliver a comprehensive analysis of the panel data from Rosstat, employing both pooled and LSDV regression techniques to extract meaningful insights.

# Technical specifications of the Jupyter Server

The project had been made in specialized Jupyter environment that we recommend executing in Docker or anyother linux machine using Debian family. In this case majory of written code and analysis had been made in WSL Ubuntu 20.04 LTS. This choice had been made mostry because windows environment does not support *R magic* nor dual kernel inside one Jupyter server

