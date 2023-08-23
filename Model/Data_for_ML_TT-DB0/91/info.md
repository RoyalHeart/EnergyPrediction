Train MSE Score: 0.0000000012 MSE
Test MSE Score: 0.0000000009 MSE
Train MAE Score: 0.0000242802 MAE
Test MAE Score: 0.0000208479 MAE
Train MAPE Score: 0.2983 MAPE
Test MAPE Score: 0.1865 MAPE
Train RMSE Score: 0.0000347715 RMSE
Test RMSE Score: 0.0000306572 RMSE
Train RMSPE: 0.6671 RMSPE
Test RMSPE: 0.3773 RMSPE

Cumulative:
Train MSE Score: 0.0000022881 MSE
Test MSE Score: 0.0000001784 MSE
Train MAE Score: 0.0012519345 MAE
Test MAE Score: 0.0003830437 MAE
Train MAPE Score: 0.0596 MAPE
Test MAPE Score: 0.0058 MAPE
Train RMSE Score: 0.0015126441 RMSE
Test RMSE Score: 0.0004223235 RMSE
Train RMSPE: 0.1213 RMSPE
Test RMSPE: 0.0062 RMSPE

Time step: 4
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 4, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "batch_input_shape": [null, 4, 2], "dtype": "float32", "filters": 15, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 51, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 122, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}