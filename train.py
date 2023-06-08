import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import tensorflow as tf
from keras.layers import TimeDistributed
from keras.models import Sequential
from keras.layers import Dense
from keras.layers import MaxPooling1D
from keras.layers import Flatten
from keras.layers import Conv1D
from keras.layers import LSTM
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_squared_error
import requests
import datetime
import os
from enum import Enum

print("Number of GPUs Available: ", len(tf.config.list_physical_devices("GPU")))
# fix random seed for reproducibility
tf.random.set_seed(8)


class ModelType(Enum):
    CNN = "CNN"
    LSTM = "LSTM"


class PowerPrediction:
    # for LSTM best is time_step 4/1, lstm 3
    # for CNN best is time_step 10/32
    time_step = 32
    train_test_ratio = 0.80
    epoch_size = 2000

    def __init__(
        self,
        model_type: ModelType = ModelType.CNN,
        epoch: int = 2000,
        batch_size: int = 2000,
        time_step: int = time_step,
    ):
        self.epoch_size = epoch
        self.batch_size = batch_size
        self.model_type = model_type.value
        self.time_step = time_step

    def train_model(self):
        self.get_dataset()
        self.save_dataset_plot()
        self.transform()
        self.split_dataset(self.train_test_ratio)
        self.create_trainXY_testXY()
        self.reshape_input()
        self.model = self.create_model()
        self.save_model()
        self.evaluate_model()
        self.plot_result()

    def load(self, version):
        model = tf.keras.models.load_model("./StockPredict/FPT/19/")
        last_i_price_close = self.get_dataset()
        last_i_price_close = np.reshape(last_i_price_close, (1, 4, 1))
        print(last_i_price_close.shape)
        for i in range(10):
            nextPrice = model.predict(last_i_price_close)
            print(f"Next {i} price", self.scaler.inverse_transform(nextPrice))
            last_i_price_close[0] = np.reshape(
                np.append(last_i_price_close[0][1:], [[0]]), (4, 1)
            )
            last_i_price_close[0][-1] = nextPrice

    def to_string(self):
        print_list = [
            f"Time step: {self.time_step}",
            f"Ratio: {self.train_test_ratio}",
            f"Model type: {self.model_type}",
            f"Epoch size: {self.epoch_size}",
            f"Batch size: {self.batch_size}",
        ]
        return "\n".join(print_list)

    def get_dataset(self):
        dataframe = pd.read_excel(
            "Data/Data_1h/Data_1h/Solar_System_2.xlsx",
            sheet_name="2023",
            header=1,
            usecols=[11],
        )
        dataset = dataframe.values
        dataset = dataset.astype("float32")
        self.dataset = dataset
        return dataset

    def save_dataset_plot(self) -> None:
        plt.clf()
        plt.plot(self.dataset)
        script_dir = os.path.dirname(__file__)
        results_dir = os.path.join(script_dir, "Model")
        file_name = f"dataset_plot.png"
        if not os.path.isdir(results_dir):
            os.makedirs(results_dir)
        figure_path = os.path.join(results_dir, file_name)
        plt.savefig(figure_path)

    def transform(self):
        scaler = MinMaxScaler(feature_range=(0, 1))
        dataset = scaler.fit_transform(self.dataset)
        self.scaler = scaler
        self.dataset = dataset

    # split into train and test sets
    def split_dataset(self, ratio=0.67):
        train_size = int(len(self.dataset) * ratio)
        train, test = (
            self.dataset[0:train_size, :],
            self.dataset[train_size : len(self.dataset), :],
        )
        print(len(train), len(test))
        self.train = train
        self.test = test

    # convert an array of values into a dataset matrix
    def create_timestep_dataset(self, dataset, time_step):
        dataX, dataY = [], []
        for i in range(len(dataset) - time_step - 1):
            a = dataset[i : (i + time_step), 0]
            dataX.append(a)
            dataY.append(dataset[i + time_step, 0])
        return np.array(dataX), np.array(dataY)

    def create_trainXY_testXY(self):
        trainX, trainY = self.create_timestep_dataset(self.train, self.time_step)
        testX, testY = self.create_timestep_dataset(self.test, self.time_step)
        self.trainX = trainX
        self.trainY = trainY
        self.testX = testX
        self.testY = testY

    # reshape input to be [samples, time steps, features]
    def reshape_input(self):
        trainX = np.reshape(self.trainX, (self.trainX.shape[0], self.time_step, 1))
        testX = np.reshape(self.testX, (self.testX.shape[0], self.time_step, 1))
        self.trainX = trainX
        self.testX = testX

    # create and fit the CNN network
    def create_model(self):
        model = Sequential()
        if self.model_type == ModelType.CNN.value:
            model.add(
                Conv1D(32, (3), activation="relu", input_shape=(self.time_step, 1))
            )
            # model.add(MaxPooling1D((2)))
            model.add(Conv1D(64, (3), activation="relu"))
            # model.add(MaxPooling1D((2)))
            model.add(Conv1D(64, (3), activation="relu"))
            model.add(MaxPooling1D((2)))
            model.add(Flatten())
            model.add(Dense(64, activation="relu"))
            model.add(Dense(1))
            model.summary()
            model.compile(loss="mean_squared_error", optimizer="adam")
            model.fit(
                self.trainX,
                self.trainY,
                epochs=self.epoch_size,
                batch_size=self.batch_size,
                verbose=2,
            )
        elif self.model_type == ModelType.LSTM.value:
            model.add(LSTM(3, "relu"))
            model.add(Dense(1))
            model.compile(loss="mean_squared_error", optimizer="adam")
            model.fit(
                self.trainX,
                self.trainY,
                epochs=self.epoch_size,
                batch_size=self.batch_size,
                verbose=2,
            )
        else:
            print("Unknown model type")
        return model

    # make predictions
    def evaluate_model(self):
        train_predict = self.model.predict(self.trainX)
        test_predict = self.model.predict(self.testX)
        # invert predictions
        train_predict = self.scaler.inverse_transform(train_predict)
        train_true = self.scaler.inverse_transform([self.trainY])
        test_predict = self.scaler.inverse_transform(test_predict)
        test_true = self.scaler.inverse_transform([self.testY])
        # calculate root mean squared error (RMSE)
        trainScore = np.sqrt(mean_squared_error(train_true[0], train_predict[:, 0]))
        train_score_percentage = np.sqrt(
            np.mean(
                np.square(((train_true[0] - train_predict[:, 0]) / train_true[0])),
                axis=0,
            )
        )
        test_score_percentage = np.sqrt(
            np.mean(
                np.square(((test_true[0] - test_predict[:, 0]) / test_true[0])),
                axis=0,
            )
        )
        train_score_percentage_output = (
            "Train RMSPE: %.2f RMSPE" % train_score_percentage
        )
        test_score_percentage_output = "Test RMSPE: %.2f RMSPE" % test_score_percentage
        train_score_output = "Train Score: %.2f RMSE" % (trainScore)
        testScore = np.sqrt(mean_squared_error(test_true[0], test_predict[:, 0]))
        test_score_output = "Test Score: %.2f RMSE" % (testScore)
        print(train_score_output)
        print(test_score_output)
        print(train_score_percentage_output)
        print(test_score_percentage_output)
        rmse_file = open(f"./Model/{self.version}/accuracy.md", "w")
        rmse_file.write(
            train_score_output
            + "\n"
            + test_score_output
            + "\n"
            + train_score_percentage_output
            + "\n"
            + test_score_percentage_output
            + "\n"
            + self.to_string()
        )
        rmse_file.close()
        self.trainPredict = train_predict
        self.testPredict = test_predict

    def save_model(self):
        version = 0
        for dir in os.scandir(f"./Model/"):
            if dir.is_dir():
                version = int(dir.name) if int(dir.name) > version else version
        version += 1
        self.version = version
        self.model.save(f"./Model/{version}")

    def plot_result(self):
        # shift train predictions for plotting
        trainPredictPlot = np.empty_like(self.dataset)
        trainPredictPlot[:, :] = np.nan
        trainPredictPlot[
            self.time_step : len(self.trainPredict) + self.time_step, :
        ] = self.trainPredict
        # shift test predictions for plotting
        testPredictPlot = np.empty_like(self.dataset)
        testPredictPlot[:, :] = np.nan
        testPredictPlot[
            len(self.trainPredict) + (self.time_step * 2) + 1 : len(self.dataset) - 1, :
        ] = self.testPredict
        # plot baseline and predictions
        plt.clf()
        plt.plot(self.scaler.inverse_transform(self.dataset))
        plt.plot(trainPredictPlot)
        plt.plot(testPredictPlot)
        # plt.show()
        plt.savefig(f"./Model/{self.version}/predict.png")


stockPrediction = PowerPrediction(
    time_step=1,
    model_type=ModelType.LSTM,
    epoch=2000,
    batch_size=2000,
)
stockPrediction.train_model()
