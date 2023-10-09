# Energy Prediction with CNN, LSTM

This is a project to predict some properties of the solar power system like the
remaining useful life (RUL), lifetime consumption (LC), and acumulated damage (AD).

## Train data

Because the project is private so the training data is hidden.

## Structure

All the saved models with some evaluation are in the Model folders

There are two types of SSO files, one for the cnn only model, and the other for the combined model.
Each dataset group will have a different SSO file.

As for training the models, all the files are in the folder Train

## Step to run

First run the SSO files to get the hyperparameter set for the model.

Then use the output of SSO to train models with a good set of hyperparameters.

All the trained model will be saved with the evaluation file.

## Example

Prediction of life cycle for the three year datasets

![predict_three_years](./Model/Data_1h/33/predict.png)
