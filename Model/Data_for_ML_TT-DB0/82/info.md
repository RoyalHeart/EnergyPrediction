Train MAE Score: 0.0000087663 MAE
Test MAE Score: 0.0000654122 MAE
Train MAPE Score: 0.0772 MAPE
Test MAPE Score: 0.4662 MAPE
Train RMSE Score: 0.0000129796 RMSE
Test RMSE Score: 0.0000810790 RMSE
Train RMSPE: 0.1465 RMSPE
Test RMSPE: 0.6517 RMSPE

Cumulative:
Train MAE Score: 0.0008431610 MAE
Test MAE Score: 0.0027967394 MAE
Train MAPE Score: 0.0314 MAPE
Test MAPE Score: 0.0464 MAPE
Train RMSE Score: 0.0009551287 RMSE
Test RMSE Score: 0.0029415024 RMSE
Train RMSPE: 0.0326 RMSPE
Test RMSPE: 0.0480 RMSPE

Time step: 20
Ratio: 0.8
Model type: CNN_SSO
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 20, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_8_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": [null, 20, 2], "dtype": "float32", "filters": 9, "kernel_size": [4], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_8", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 70, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_9", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 636, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}