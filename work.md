# 1/6/2023

## Work to do

- Run PCA, hyperparameter
- Test the dataset to see if the distribution fit the Gaussian distribution

## Method

- Separate, combine, preprocessing,

# 15/6/2023

PV module has diode and many other things that can affect life cycles
Temperature can affect greatly to the RUL

## Excel file structure

overlapping 4 modules -> Tiep theo -> bp1 - bp4 -> TT(TT1) -> Algorithm
overlapping 3 modules -> Tiep theo -> bp5 - bp10 -> TT(TT1) -> Algorithm
overlapping 2 modules -> Tiep theo -> bp11 - bp19 -> TT(TT1) -> Algorithm
one bypass per module -> Tiep theo -> P54 - P63-> TT(TT1) -> Algorithm

only need three variables: temp Nf LC

## TODO

- Create the LC dataset with the above rules
- Predict LC with the new dataset
- Read SSO paper
- SSO code

# 29/06/2023 - 06/07/2023

- Try multiple models, changing Hyperparameter

# 06/07/2023

- Separate the temperature into multival interval (<50, 50-90, >90), can see average temp for rainy day, cloudy day, sunny day
- Use 95% of the dataset (in the 2q interval, remove top 2.5% and last 2.5%), remove outliers, plot the PDF to see the rough distribution
- Compute cumulative input data -> cumulative output, normal input
- Run SSO code, have to change many things: Conv1D, reduce variables uses, change output size from 38 to 1.

# 3/8/2023

- Take SSO result and apply to CNN model
- Change SSO model to a better model with 9 variables

# 10/8/2023

- Change the score metric of SSO to MAPE, MSE of cumulative data
- Fix cumulative for test data
