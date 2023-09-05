Train MSE Score: 0.0000000013 MSE
Test MSE Score: 0.0000000008 MSE
Train MAE Score: 0.0000244398 MAE
Test MAE Score: 0.0000189044 MAE
Train MAPE Score: 0.2999 MAPE
Test MAPE Score: 0.1723 MAPE
Train RMSE Score: 0.0000355298 RMSE
Test RMSE Score: 0.0000287907 RMSE
Train RMSPE: 0.6839 RMSPE
Test RMSPE: 0.3675 RMSPE

Cumulative:
Train MSE Score: 0.0000033137 MSE
Test MSE Score: 0.0000003236 MSE
Train MAE Score: 0.0015182552 MAE
Test MAE Score: 0.0005245551 MAE
Train MAPE Score: 0.0702 MAPE
Test MAPE Score: 0.0079 MAPE
Train RMSE Score: 0.0018203496 RMSE
Test RMSE Score: 0.0005688627 RMSE
Train RMSPE: 0.1337 RMSPE
Test RMSPE: 0.0084 RMSPE

Time step: 4
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 4, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_8_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": [null, 4, 2], "dtype": "float32", "filters": 11, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_8", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 17, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_9", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 36, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}