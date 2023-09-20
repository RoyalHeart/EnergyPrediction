Train MSE Score: 0.00000000020047327796 MSE
Test MSE Score: 0.00000000016083629473 MSE
Train MAE Score: 0.00000573746545941259 MAE
Test MAE Score: 0.00000540367896361661 MAE
Train MAPE Score: 1.9527 MAPE
Test MAPE Score: 3.4652 MAPE
Train RMSE Score: 0.00001415885863890273 RMSE
Test RMSE Score: 0.00001268212500841174 RMSE
Train RMSPE: 5.2026 RMSPE
Test RMSPE: 5.9716 RMSPE

Cumulative:
Train MSE Score: 0.00000094208479317482 MSE
Test MSE Score: 0.00000001316872156192 MSE
Train MAE Score: 0.00088753838967386099 MAE
Test MAE Score: 0.00011085834670261825 MAE
Train MAPE Score: 0.4997 MAPE
Test MAPE Score: 0.0299 MAPE
Train RMSE Score: 0.00097061052599630153 RMSE
Test RMSE Score: 0.00011475505026760046 RMSE
Train RMSPE: 0.5038 RMSPE
Test RMSPE: 0.0310 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 3], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_5_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "batch_input_shape": [null, 10, 3], "dtype": "float32", "filters": 32, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_6", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d_7", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": [1], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": [2], "pool_size": [2], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}