Train MSE Score: 0.0000000012 MSE
Test MSE Score: 0.0000000009 MSE
Train MAE Score: 0.0000255567 MAE
Test MAE Score: 0.0000245360 MAE
Train MAPE Score: 0.2722 MAPE
Test MAPE Score: 0.1798 MAPE
Train RMSE Score: 0.0000341548 RMSE
Test RMSE Score: 0.0000300524 RMSE
Train RMSPE: 0.5792 RMSPE
Test RMSPE: 0.3027 RMSPE

Cumulative:
Train MSE Score: 0.0000009517 MSE
Test MSE Score: 0.0000001484 MSE
Train MAE Score: 0.0008831163 MAE
Test MAE Score: 0.0003225027 MAE
Train MAPE Score: 0.0459 MAPE
Test MAPE Score: 0.0048 MAPE
Train RMSE Score: 0.0009755431 RMSE
Test RMSE Score: 0.0003851985 RMSE
Train RMSPE: 0.1113 RMSPE
Test RMSPE: 0.0056 RMSPE

Time step: 4
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 4, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": [null, 4, 2], "dtype": "float32", "filters": 15, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 51, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_5", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 122, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}