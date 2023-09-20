Train MSE Score: 0.00000000010575399260 MSE
Test MSE Score: 0.00000000069152361386 MSE
Train MAE Score: 0.00000542893709692296 MAE
Test MAE Score: 0.00001020093679043124 MAE
Train MAPE Score: 2.0083 MAPE
Test MAPE Score: 4.1454 MAPE
Train RMSE Score: 0.00001028367602550579 RMSE
Test RMSE Score: 0.00002629683657518574 RMSE
Train RMSPE: 8.4340 RMSPE
Test RMSPE: 11.6255 RMSPE

Cumulative:
Train MSE Score: 0.00000008556930633191 MSE
Test MSE Score: 0.00000003768780547013 MSE
Train MAE Score: 0.00021960939512941647 MAE
Test MAE Score: 0.00013106119849507072 MAE
Train MAPE Score: 0.0768 MAPE
Test MAPE Score: 0.0220 MAPE
Train RMSE Score: 0.00029252231766466126 RMSE
Test RMSE Score: 0.00019413347333762729 RMSE
Train RMSPE: 0.0856 RMSPE
Test RMSPE: 0.0317 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_SSO_9
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 3], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_3_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "batch_input_shape": [null, 10, 3], "dtype": "float32", "filters": 16, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_1", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "dtype": "float32", "filters": 22, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_2", "trainable": true, "dtype": "float32", "strides": [1], "pool_size": [1], "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 267, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}