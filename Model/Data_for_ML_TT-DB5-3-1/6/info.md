Train MSE Score: 0.0000000013 MSE
Test MSE Score: 0.0000000008 MSE
Train MAE Score: 0.0000197597 MAE
Test MAE Score: 0.0000152066 MAE
Train MAPE Score: 9.0819 MAPE
Test MAPE Score: 4.8362 MAPE
Train RMSE Score: 0.0000359161 RMSE
Test RMSE Score: 0.0000288726 RMSE
Train RMSPE: 98.8858 RMSPE
Test RMSPE: 8.5513 RMSPE

Cumulative:
Train MSE Score: 0.0000006604 MSE
Test MSE Score: 0.0000000977 MSE
Train MAE Score: 0.0006180661 MAE
Test MAE Score: 0.0002826258 MAE
Train MAPE Score: 0.0562 MAPE
Test MAPE Score: 0.0149 MAPE
Train RMSE Score: 0.0008126308 RMSE
Test RMSE Score: 0.0003125070 RMSE
Train RMSPE: 0.0884 RMSPE
Test RMSPE: 0.0165 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_12_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_12", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 41, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_12", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_13", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_13", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 864, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}