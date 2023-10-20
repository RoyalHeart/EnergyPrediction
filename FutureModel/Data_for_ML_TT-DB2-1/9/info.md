Train MSE Score: 0.000000000026452 MSE
Test MSE Score: 0.000000062591826 MSE
Train MAE Score: 0.000003364360668 MAE
Test MAE Score: 0.000146683997184 MAE
Train MAPE Score: 65659.2533 MAPE
Test MAPE Score: 273.5887 MAPE
Train RMSE Score: 0.000005143120483 RMSE
Test RMSE Score: 0.000250183585040 RMSE
Train RMSPE: 476101.5042 RMSPE
Test RMSPE: 1337.5660 RMSPE

Cumulative:
Train MSE Score: 0.000000001538508 MSE
Test MSE Score: 0.000008990046264 MSE
Train MAE Score: 0.000036373047403 MAE
Test MAE Score: 0.002219570557393 MAE
Train MAPE Score: 0.0015 MAPE
Test MAPE Score: 0.0453 MAPE
Train RMSE Score: 0.000039223816951 RMSE
Test RMSE Score: 0.002998340585048 RMSE
Train RMSPE: 0.0016 RMSPE
Test RMSPE: 0.0592 RMSPE

Time step: 180
Ratio: 0.5
Model type: CNN
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 180, 1], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": [null, 180, 1], "dtype": "float32", "filters": 32, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_6", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_2", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}