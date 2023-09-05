Train MSE Score: 0.0000000063 MSE
Test MSE Score: 0.0000000119 MSE
Train MAE Score: 0.0000391645 MAE
Test MAE Score: 0.0000548951 MAE
Train MAPE Score: 875929.3333 MAPE
Test MAPE Score: 5744.1162 MAPE
Train RMSE Score: 0.0000791265 RMSE
Test RMSE Score: 0.0001089100 RMSE
Train RMSPE: 6864156.2817 RMSPE
Test RMSPE: 40565.7700 RMSPE

Cumulative:
Train MSE Score: 0.0000010583 MSE
Test MSE Score: 0.0000027278 MSE
Train MAE Score: 0.0008005487 MAE
Test MAE Score: 0.0014233074 MAE
Train MAPE Score: 0.0747 MAPE
Test MAPE Score: 0.0311 MAPE
Train RMSE Score: 0.0010287193 RMSE
Test RMSE Score: 0.0016516075 RMSE
Train RMSPE: 0.1332 RMSPE
Test RMSPE: 0.0350 RMSPE

Time step: 10
Ratio: 0.75
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_2_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 11, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_2", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 17, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 36, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}