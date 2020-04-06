# SimpleLinearRegression
Simple Linear Regression

Prediction of y based on x using R 'lm' and 'predict'

## High Level
1. Import data file (.csv) into 2 R objects
2. Linear Regression / Model
3. Visualize the results

### Low Level
* declare libraries
* set working directory
* read in files from work directory (redirect into object)
* create the DF (dataframes - omit 'NA')
* plot the dataset
* correlation x and y (using R cor)
* create regression model based on x
* plot the model (using R abline)
* display a summary of the model
* plot the train data/regression model (fitted)
* build the prediction (using R predict)
* display the prediction
* compare the data (testdata, prediction)


#
## Notes
### Library/packages used

* library(dplyr)
* library(magrittr)