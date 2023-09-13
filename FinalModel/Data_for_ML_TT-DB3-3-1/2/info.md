Train MSE Score: 0.00000000042004928190 MSE
Test MSE Score: 0.00000000084272486194 MSE
Train MAE Score: 0.00001066879194232418 MAE
Test MAE Score: 0.00001443931686203402 MAE
Train MAPE Score: 2.3433 MAPE
Test MAPE Score: 3.4684 MAPE
Train RMSE Score: 0.00002049510385184541 RMSE
Test RMSE Score: 0.00002902972376620417 RMSE
Train RMSPE: 10.1332 RMSPE
Test RMSPE: 7.6569 RMSPE

Cumulative:
Train MSE Score: 0.00000019520381546577 MSE
Test MSE Score: 0.00000001076887327640 MSE
Train MAE Score: 0.00032521977356711094 MAE
Test MAE Score: 0.00008565481968237761 MAE
Train MAPE Score: 0.0827 MAPE
Test MAPE Score: 0.0098 MAPE
Train RMSE Score: 0.00044181875861688883 RMSE
Test RMSE Score: 0.00010377318187469065 RMSE
Train RMSPE: 0.0983 RMSPE
Test RMSPE: 0.0118 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_13_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_13", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 2, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_11", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_14", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_12", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 320, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}