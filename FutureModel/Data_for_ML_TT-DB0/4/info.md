Train MSE Score: 0.000000000007593 MSE
Test MSE Score: 0.000000013259200 MSE
Train MAE Score: 0.000002051695519 MAE
Test MAE Score: 0.000101823463107 MAE
Train MAPE Score: 0.0207 MAPE
Test MAPE Score: 0.7232 MAPE
Train RMSE Score: 0.000002755600063 RMSE
Test RMSE Score: 0.000115148597982 RMSE
Train RMSPE: 0.0337 RMSPE
Test RMSPE: 1.1205 RMSPE

Cumulative:
Train MSE Score: 0.000000025613413 MSE
Test MSE Score: 0.000014666208026 MSE
Train MAE Score: 0.000157692834641 MAE
Test MAE Score: 0.003412316230844 MAE
Train MAPE Score: 0.0053 MAPE
Test MAPE Score: 0.0487 MAPE
Train RMSE Score: 0.000160041910844 RMSE
Test RMSE Score: 0.003829648551295 RMSE
Train RMSPE: 0.0054 RMSPE
Test RMSPE: 0.0541 RMSPE

Time step: 180
Ratio: 0.5
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 180, 1], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "batch_input_shape": [null, 180, 1], "dtype": "float32", "filters": 41, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 864, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}