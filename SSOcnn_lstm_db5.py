# -*- coding: utf-8 -*-
"""
Created on Sun Jul 12 20:09:32 2020

@author: HEY
Lenet，Alexnet，Googlenet，VGG，DRL
https://blog.csdn.net/qq_27432889/java/article/details/70228361
https://blog.csdn.net/wmy199216/article/details/71171401
"""
import gzip
import math
import os
import random
import time

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# coding=utf-8
import tensorflow
from IPython.display import display
from keras import backend as K
from keras.layers import (
    ELU,
    LSTM,
    Activation,
    Conv1D,
    Dense,
    Flatten,
    LeakyReLU,
    MaxPooling1D,
    ReLU,
    ThresholdedReLU,
)
from keras.layers.convolutional import Conv2D, MaxPooling2D
from keras.models import Sequential
from keras.utils.generic_utils import get_custom_objects

# from keras.utils.vis_utils import plot_model
from keras.utils.np_utils import to_categorical
from numpy.ma import cos, exp, sin
from PIL import Image
from sklearn.metrics import (
    mean_absolute_error,
    mean_absolute_percentage_error,
    mean_squared_error,
)
from sklearn.preprocessing import MinMaxScaler

gBest = 0
DATA_LOCATION = "Data/20230625-Data_for_ML"
DATA_FILE_NAME = "Data_for_ML_TT-DB5-1-1"
FEATURE_NUMBER = 2
TIME_STEP = 4
Y_COL = 1
TRAIN_TEST_RATIO = 0.8
MODEL_LOCATION = "../Model"
SAVE_MODEL_LOCATION = f"{MODEL_LOCATION}/{DATA_FILE_NAME}"


# os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
# *****************************************************************************************
def create_dataset(dataset, look_back=1, y_col=Y_COL):
    dataX, dataY = [], []
    for i in range(len(dataset) - look_back - 1):
        a = dataset[i : (i + look_back), :]
        dataX.append(a)
        dataY.append(dataset[i + look_back, y_col])
    return np.array(dataX), np.array(dataY)


def DataSet():
    dataframe = pd.read_excel(
        f"{DATA_LOCATION}/{DATA_FILE_NAME}.xlsx",
        sheet_name="Sheet1",
        header=1,
        usecols=[0, 4],
    )
    dataset = dataframe.values
    # # Preprocessing
    for i in range(dataset.shape[0]):
        dataset[i][0] = int(dataset[i][0].replace("TT", "").replace("'", ""))
    # dataset[np.isnan(dataset)] = 0
    dataset = dataset.astype("float64")
    new_dataset = np.array(np.zeros((1, FEATURE_NUMBER)))
    j = 0
    mean = np.mean(dataset[:, Y_COL])
    standard_deviation = np.std(dataset[:, Y_COL])

    bins_size = int(1 + 3.3 * np.log10(len(dataset)))
    counts, bin_dataset = np.histogram(dataset[:, Y_COL], bins=bins_size, density=True)
    counts_number, bin_dataset = np.histogram(dataset[:, Y_COL], bins=bins_size)
    rel_freq = counts_number / len(dataset)
    # plt.clf()
    # plt.plot(bin_dataset[1:], rel_freq, label="actual_pdf")
    # plt.show()

    # Take 95% of the data and by interval
    for i in range(dataset.shape[0]):
        #     if dataset[i][0] < 50 and dataset[i][0] < 90:
        if (
            dataset[i][Y_COL] > mean - 2 * standard_deviation
            and dataset[i][Y_COL] < mean + 2 * standard_deviation
        ):
            new_dataset = np.append(new_dataset, [dataset[i]], axis=0)
            j += 1
    dataset = new_dataset[1:, :]

    # cumulative dataset
    # for i in range(1, dataset.shape[0]):
    #     dataset[i, Y_COL] = dataset[i - 1, Y_COL] + dataset[i, Y_COL]
    # dataset[i] = dataset[i-1] + dataset[i]
    scaler = MinMaxScaler(feature_range=(0, 1))
    train_size = int(len(dataset) * TRAIN_TEST_RATIO)
    test_size = len(dataset) - train_size
    train, test = dataset[0:train_size, :], dataset[train_size : len(dataset), :]
    print(f"Total : {len(dataset)}, Train: {len(train)}, Test: {len(test)}")
    X_train = scaler.fit_transform(train)
    X_test = scaler.transform(test)
    X_train, _ = create_dataset(X_train, TIME_STEP)
    X_test, _ = create_dataset(X_test, TIME_STEP)
    _, Y_train = create_dataset(train, TIME_STEP, Y_COL)
    _, Y_test = create_dataset(test, TIME_STEP, Y_COL)
    Y_train = scaler.fit_transform(Y_train.reshape(-1, 1))
    Y_test = scaler.transform(Y_test.reshape(-1, 1))
    return X_train, Y_train, X_test, Y_test, scaler, dataset


def LeNet(X):
    global Nx, Ny, gBest

    X_train, Y_train, X_test, Y_test, scaler, dataset = DataSet()
    # X_train,Y_train,X_test,Y_test,X_valid,Y_valid = DataSet2()

    model = Sequential()

    model.add(
        Conv1D(
            X[0],
            kernel_size=(int(X[1])),
            strides=(int(X[2])),
            input_shape=(Nx, Ny),
            padding="valid",
            activation="relu",
            kernel_initializer="uniform",
        )
    )
    model.add(LSTM(X[3], "relu", return_sequences=True))
    model.add(LSTM(X[4], "relu"))
    model.add(Dense(X[5]))
    model.add(Dense(X[6]))
    model.add(Dense(1))
    model.compile(optimizer="adam", loss="mse", metrics=["mse", "mae", "mape"])
    param = model.count_params()
    print("Total Parameters：%d" % model.count_params())

    # model.summary()
    # plot_model(model, "multi_input_and_output_model.png", show_shapes=True)
    # model.compile(optimizer=Xopt, loss=Xlos, metrics=['accuracy'])

    # X[15] = 20   #batch_size
    # X[15]=5
    model.fit(
        X_train,
        Y_train,
        # validation_data=(X_valid, Y_valid),
        batch_size=16,
        epochs=100,
        verbose=0,
    )
    # verbose=0 will show you nothing (silent)
    # verbose=1 will show you an animated progress bar like this: =====
    # verbose=2 will just mention the number of epoch like this: Eporch 1/10

    # [0.031825309940411217, 0.98979999780654904]
    score = model.evaluate(
        X_test, Y_test, batch_size=16, verbose=0
    )  # return MSE, MAE, MAPE
    # predictions
    train_predict = model.predict(X_train)
    test_predict = model.predict(X_test)
    # invert predictions
    train_predict = scaler.inverse_transform(train_predict)
    train_true = scaler.inverse_transform(Y_train).reshape(1, -1)
    test_predict = scaler.inverse_transform(test_predict)
    test_true = scaler.inverse_transform(Y_test).reshape(1, -1)

    # train_predict = np.cumsum(train_predict).reshape(-1, 1)
    # test_predict = np.cumsum(np.append(train_predict[-1, -1], test_predict))[
    #     1:
    # ].reshape(-1, 1)
    # train_true = np.cumsum(train_true).reshape(1, -1)
    # test_true = np.cumsum(np.append(train_true[0, -1], test_true))[1:].reshape(1, -1)

    # calculate mean absolute error (MAE)
    train_mae = mean_absolute_error(train_true[0], train_predict[:, 0])
    test_mae = mean_absolute_error(test_true[0], test_predict[:, 0])
    # calculate mean absolute percentage error (MAPE)
    train_mape = mean_absolute_percentage_error(train_true[0], train_predict[:, 0])
    test_mape = mean_absolute_percentage_error(test_true[0], test_predict[:, 0])
    # calculate mean squared error (MSE)
    train_mse = mean_squared_error(train_true[0], train_predict[:, 0])
    test_mse = mean_squared_error(test_true[0], test_predict[:, 0])
    # calculate root mean squared error (RMSE)
    train_rmse = np.sqrt(train_mse)
    test_rmse = np.sqrt(test_mse)
    # calculate root mean squared percentage error (RMSPE)
    train_rmspe = np.sqrt(
        np.mean(
            np.square(((train_true[0] - train_predict[:, 0]) / train_true[0])),
            axis=0,
        )
    )
    test_rmspe = np.sqrt(
        np.mean(
            np.square(((test_true[0] - test_predict[:, 0]) / test_true[0])),
            axis=0,
        )
    )

    train_mse_output = "Train MSE Score: %.10f MSE" % train_mse
    test_mse_output = "Test MSE Score: %.10f MSE" % test_mse
    train_mae_output = "Train MAE Score: %.10f MAE" % train_mae
    test_mae_output = "Test MAE Score: %.10f MAE" % test_mae
    train_mape_output = "Train MAPE Score: %.4f MAPE" % train_mape
    test_mape_output = "Test MAPE Score: %.4f MAPE" % test_mape
    train_rmse_output = "Train RMSE Score: %.10f RMSE" % train_rmse
    test_rmse_output = "Test RMSE Score: %.10f RMSE" % test_rmse
    train_rmspe_output = "Train RMSPE: %.4f RMSPE" % train_rmspe
    test_rmspe_output = "Test RMSPE: %.4f RMSPE" % test_rmspe
    print(train_mse_output)
    print(test_mse_output)
    print(train_mae_output)
    print(test_mae_output)
    print(train_mape_output)
    print(test_mape_output)
    print(train_rmse_output)
    print(test_rmse_output)
    print(train_rmspe_output)
    print(test_rmspe_output)

    # if train_mape < F[gBest]:
    # model.save("model/WaferID_model_{}.h5".format(score[0]))
    # print('Test loss:', score[0])
    # print('Test accuracy:', score[1])
    return test_mse, param


# ------------------------------------------------------------------------------
def gelu(x):
    return 0.5 * x * (1 + K.tanh(x * 0.7978845608 * (1 + 0.044715 * x * x)))


# *****************************************************************************************
def ORIGIN(X):  # _init
    global run

    X[0], X[1] = 8, 2  # filter number & size
    X[2] = 1  # strides
    X[3], X[4] = 32, 32  # lstm nodes
    X[5], X[6] = 16, 8  # dnn nodes
    # the number of nodes in OUTPUT layer must be equal to the number of classes of Y
    # X[17], X[18], X[19], X[20] = 6, 7, 4, 6   #Activation
    # X[21], X[22] = 0, 10
    # X[17], X[18], X[19], X[20] = 0, 0, 0, 5   #Activation

    t0 = time.process_time()
    F[0], param = LeNet(X)
    t1 = time.process_time()
    pT[0] = 1000 * (t1 - t0)
    print("%.10f %.10f" % (F[0], pT[0]))
    print("%d %.10f %.10f" % (run, F[0], pT[0]), file=f)


# *****************************************************************************************
def PRINT_VAR_size(X, Y):  # _init
    """
    Y[0] = math.ceil((Nx -X[1]+1)/X[3])
    Y[1] = math.ceil((Ny -X[2]+1)/X[4])
    Y[2] = math.ceil((Y[0]-X[5]+1)/X[5]) #output_shape = (input_shape - pool_size + 1) / strides
    Y[3] = math.ceil((Y[1]-X[6]+1)/X[6]) #output_shape = (input_shape - pool_size + 1) / strides
    Y[4] = math.ceil((Y[2]-X[8]+1)/X[10])
    Y[5] = math.ceil((Y[3]-X[9]+1)/X[11])
    """
    Y[6] = math.ceil(
        (Y[4] - X[6] + 1) / X[6]
    )  # output_shape = (input_shape - pool_size + 1) / strides
    Y[7] = math.ceil(
        (Y[5] - X[7] + 1) / X[7]
    )  # output_shape = (input_shape - pool_size + 1) / strides

    print("after pool1: (", X[5], "*", X[6], ")", Y[2], Y[3])
    print("after conv2: (", X[8], "*", X[9], ")", Y[4], Y[5])
    print("after pool2: (", X[12], "*", X[13], ")", Y[6], Y[7])


# ---------------------------------------------
def VAR_init(var, X, Y):  # _init
    if var in [0]:
        X[var] = random.randint(1, 48)  # filter number
    elif var in [1]:
        X[var] = random.randint(2, min(3, Y[1]))  # filter step
    elif var in [2]:
        X[var] = 1  # stride step
    elif var in [3]:
        X[var] = random.randint(1, 300)  # lstm 1 nodes
    elif var in [4]:
        X[var] = random.randint(1, 300)  # lstm 2 nodes
    elif var in [5]:
        X[var] = random.randint(1, 64)  # dnn 1 nodes
    elif var in [6]:
        X[var] = random.randint(1, 32)  # dnn 1 nodes
    # elif var in [15]: X[var] = random.randint(10, 30)   #batch size
    """
    #elif var in [15]: return random.randint(5, 15) #hidden size 
    elif var in [15]: X[var] = random.randint(10, 30) #batch_size size  
    elif var in [16]: X[var] = random.randint(5, 15) #epochs
    
    elif var in range(17, 21): X[var] = random.randint(0, 8) #Activation
    elif var in [21]: X[var] = random.randint(0, 7)
    elif var in [22]: X[var] = random.randint(0, 15)
    """
    # print(var, X[var])


# ---------------------------------------------
def VAR_check(var, X, Y):  # _init
    if var in [0, 1, 2, 3, 4, 5, 6]:
        return  # filter number, filter size, strides first conv layer
    # elif var in [1]:
    #     y1, y2, x1, x2 = 1, 5, 1, 6  # pooling X-size second pooling layer
    # Y[y1] = math.ceil((Y[y2] - X[x1] + 1) / X[x2])
    # if X[var] > Y[y1]:
    #     X[var] = Y[y1]
    # elif X[var] == 0:
    #     X[var] = 2

    """
    elif var in [10]:                          #stride step second conv layer
         YY = min(4, Y[2]+2)
         if X[10]>YY: X[10]=YY
         return
    elif var in [11]:                          #stride stepsecond conv layer
         YY = min(4, Y[3]+2)
         if X[11]>YY: X[11]=YY
         return
     """


# *****************************************************************************************
def SSO_init(X, F, pX, pF, Nsol, Nvar, Nx, Ny):
    global gBest

    for sol in range(0, Nsol):
        for var in range(Nvar):
            VAR_init(var, X[sol], Y)  # _init
            VAR_check(var, X[sol], Y)
            pX[sol][var] = X[sol][var]
        # print(X[sol])
        # PRINT_VAR_size(X[sol], Y)

        t0 = time.process_time()
        F[sol], PR[sol] = LeNet(X[sol])
        pF[sol] = F[sol]
        t1 = time.process_time()
        pT[sol] = 1000 * (t1 - t0)

        if F[sol] < F[gBest]:
            gBest = sol

        print(
            "%d %d %.10f %.10f %d %d %.10f %d"
            % (0, sol, F[sol], pT[sol], 0, gBest, pF[gBest], PR[gBest])
        )


# ---------------------------------------------
def SSO_UPDATE(sol, Nx, Ny):
    global gen, gBest, genBest, Cg, Cp, Cw

    for var in range(Nvar):
        rnd = np.random.rand(1)
        if rnd < Cg:
            X[sol][var] = pX[gBest][var]
        elif rnd < Cp:
            X[sol][var] = pX[sol][var]
        elif rnd > Cw:
            VAR_init(var, X[sol], Y)
        # print(var, X[sol][var])
        VAR_check(var, X[sol], Y)

    t0 = time.process_time()
    F[sol], PR[sol] = LeNet(X[sol])
    t1 = time.process_time()
    Xtime = 1000 * (t1 - t0)

    if F[sol] < pF[sol]:
        pF[sol] = F[sol]
        pT[sol] = Xtime
        for var in range(0, Nvar):
            pX[sol][var] = X[sol][var]
        if F[sol] < pF[gBest]:
            gBest = sol
            genBest = gen

    print(
        "%d %d %.10f %.10f %d %d %.10f %d"
        % (gen, sol, F[sol], Xtime, genBest, gBest, pF[gBest], PR[gBest])
    )


# *****************************************************************************************
if __name__ == "__main__":
    Ngen, Nsol, Nvar, Nrun = 20, 10, 7, 1
    # 6 Cg, Cp, Cw = 0.35, 0.65, 0.85
    # 8 Cg, Cp, Cw = 0.5, 0.5, 0.8
    Cg, Cp, Cw = 0.4, 0.7, 0.9
    # 10 Cg, Cp, Cw = 0.5, 0.7, 0.7
    Ngen_1 = Ngen - 1
    pX = np.zeros([Nsol, Nvar], dtype=int)
    F = np.zeros([Nsol], dtype=float)
    pF = np.zeros([Nsol], dtype=float)
    np.random.seed(7)

    for run in range(0, Nrun):
        X = np.zeros([Nsol, Nvar], dtype=int)

        pT = np.zeros([Nsol], dtype=float)
        Y = np.zeros([Nvar], dtype=int)
        PR = np.zeros([Nsol], dtype=int)
        Nx, Ny = TIME_STEP, FEATURE_NUMBER
        Y[1], Y[5] = Nx, Ny

        # get_custom_objects().update({'gelu': Activation(gelu)})
        # get_custom_objects().update({'leaky-relu': Activation(LeakyReLU(alpha=0.2))})
        # ...............................
        f = open(f"SSO_cnn_lstm_{DATA_FILE_NAME}.txt", "a+")

        # ...............................
        ORIGIN(X[0])

        pF[0] = F[0]
        G = F[0]
        for var in range(0, Nvar):
            pX[0][var] = X[0][var]

        # ...............................
        t0 = time.process_time()

        gBest, genBest = 0, 0
        SSO_init(X, F, pX, pF, Nsol, Nvar, Nx, Ny)
        print(
            "%d %d %d %.10f %.10f %d " % (0, 0, gBest, pF[gBest], pT[gBest], PR[gBest]),
            file=f,
            end=" ",
        )
        for var in range(0, Nvar):
            print(X[gBest][var], file=f, end=" ")
        print("", file=f)

        for gen in range(1, Ngen):
            for sol in range(Nsol):
                SSO_UPDATE(sol, Nx, Ny)
            print(
                "%d %d %d %.10f %.10f %d "
                % (gen, genBest, gBest, pF[gBest], pT[gBest], PR[gBest]),
                file=f,
                end=" ",
            )
            for var in range(0, Nvar):
                print(X[gBest][var], file=f, end=" ")
            print("", file=f)
            # if pF[gBest]>G: break

        f.close()
