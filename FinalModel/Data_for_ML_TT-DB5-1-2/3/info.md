Train MSE Score: 0.00000000058311568914 MSE
Test MSE Score: 0.00000000031083360138 MSE
Train MAE Score: 0.00001249040289728268 MAE
Test MAE Score: 0.00000596328148008551 MAE
Train MAPE Score: 3.4406 MAPE
Test MAPE Score: 3.2677 MAPE
Train RMSE Score: 0.00002414778849372060 RMSE
Test RMSE Score: 0.00001763047365725122 RMSE
Train RMSPE: 13.9402 RMSPE
Test RMSPE: 6.2282 RMSPE

Cumulative:
Train MSE Score: 0.00000300899296835192 MSE
Test MSE Score: 0.00000002934644513849 MSE
Train MAE Score: 0.00156015756492434532 MAE
Test MAE Score: 0.00011995767622469464 MAE
Train MAPE Score: 0.4970 MAPE
Test MAPE Score: 0.0217 MAPE
Train RMSE Score: 0.00173464491131525918 RMSE
Test RMSE Score: 0.00017130804166321767 RMSE
Train RMSPE: 0.5018 RMSPE
Test RMSPE: 0.0305 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_LSTM_DNN
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 8, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 8, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}