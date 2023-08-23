Train MAE Score: 0.0000211513 MAE
Test MAE Score: 0.0000447631 MAE
Train MAPE Score: 0.2302 MAPE
Test MAPE Score: 0.4037 MAPE
Train RMSE Score: 0.0000298436 RMSE
Test RMSE Score: 0.0000633761 RMSE
Train RMSPE: 0.5173 RMSPE
Test RMSPE: 0.7731 RMSPE

Cumulative:
Train MAE Score: 0.0022305840 MAE
Test MAE Score: 0.0051952368 MAE
Train MAPE Score: 0.0809 MAPE
Test MAPE Score: 0.0836 MAPE
Train RMSE Score: 0.0025819347 RMSE
Test RMSE Score: 0.0052193733 RMSE
Train RMSPE: 0.0823 RMSPE
Test RMSPE: 0.0837 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_10_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_10", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 9, "kernel_size": [4], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_10", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_11", "trainable": true, "dtype": "float32", "filters": 70, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_11", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 636, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}