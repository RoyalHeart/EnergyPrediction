Train MSE Score: 0.00000001551055350758 MSE
Test MSE Score: 0.00000001104515068019 MSE
Train MAE Score: 0.00008011119903966700 MAE
Test MAE Score: 0.00006997066957431903 MAE
Train MAPE Score: 30013.5029 MAPE
Test MAPE Score: 3405.5647 MAPE
Train RMSE Score: 0.00012454137267423168 RMSE
Test RMSE Score: 0.00010509591181481455 RMSE
Train RMSPE: 515946.3139 RMSPE
Test RMSPE: 21101.9564 RMSPE

Cumulative:
Train MSE Score: 0.00002297965030143945 MSE
Test MSE Score: 0.00000056721340407720 MSE
Train MAE Score: 0.00418717846505636034 MAE
Test MAE Score: 0.00059777549224149652 MAE
Train MAPE Score: 0.0494 MAPE
Test MAPE Score: 0.0045 MAPE
Train RMSE Score: 0.00479370945108685553 RMSE
Test RMSE Score: 0.00075313571424889955 RMSE
Train RMSPE: 0.0516 RMSPE
Test RMSPE: 0.0056 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 4], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_9_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "batch_input_shape": [null, 10, 4], "dtype": "float32", "filters": 17, "kernel_size": [3], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_10", "trainable": true, "dtype": "float32", "filters": 60, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 164, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}