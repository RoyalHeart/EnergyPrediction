Train MSE Score: 0.00000000020973150772 MSE
Test MSE Score: 0.00000000020790004722 MSE
Train MAE Score: 0.00000631114621516957 MAE
Test MAE Score: 0.00000658690824483576 MAE
Train MAPE Score: 2.7823 MAPE
Test MAPE Score: 5.4276 MAPE
Train RMSE Score: 0.00001448210991954427 RMSE
Test RMSE Score: 0.00001441873944618484 RMSE
Train RMSPE: 8.0377 RMSPE
Test RMSPE: 10.5990 RMSPE

Cumulative:
Train MSE Score: 0.00000051431632960350 MSE
Test MSE Score: 0.00000001085734783899 MSE
Train MAE Score: 0.00066254703790926664 MAE
Test MAE Score: 0.00009500024095068688 MAE
Train MAPE Score: 0.3794 MAPE
Test MAPE Score: 0.0257 MAPE
Train RMSE Score: 0.00071715851079346305 RMSE
Test RMSE Score: 0.00010419859806634864 RMSE
Train RMSPE: 0.3854 RMSPE
Test RMSPE: 0.0284 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 3], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_8_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": [null, 10, 3], "dtype": "float32", "filters": 16, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 22, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_5", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 267, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}