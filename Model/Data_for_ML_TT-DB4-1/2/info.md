Train MSE Score: 0.0000000057 MSE
Test MSE Score: 0.0000000092 MSE
Train MAE Score: 0.0000463554 MAE
Test MAE Score: 0.0000513524 MAE
Train MAPE Score: 153953.0834 MAPE
Test MAPE Score: 2456.0877 MAPE
Train RMSE Score: 0.0000755128 RMSE
Test RMSE Score: 0.0000960203 RMSE
Train RMSPE: 2530471.7950 RMSPE
Test RMSPE: 18213.4827 RMSPE

Cumulative:
Train MSE Score: 0.0000039402 MSE
Test MSE Score: 0.0000004978 MSE
Train MAE Score: 0.0018216013 MAE
Test MAE Score: 0.0004825497 MAE
Train MAPE Score: 0.0466 MAPE
Test MAPE Score: 0.0062 MAPE
Train RMSE Score: 0.0019849901 RMSE
Test RMSE Score: 0.0007055257 RMSE
Train RMSPE: 0.0486 RMSPE
Test RMSPE: 0.0091 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_2_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_2", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 41, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_2", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 864, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}