Train MSE Score: 0.00000000039976386137 MSE
Test MSE Score: 0.00000000037302658895 MSE
Train MAE Score: 0.00000966238961723891 MAE
Test MAE Score: 0.00000677528615813274 MAE
Train MAPE Score: 3.1089 MAPE
Test MAPE Score: 4.0985 MAPE
Train RMSE Score: 0.00001999409566260400 RMSE
Test RMSE Score: 0.00001931389626537543 RMSE
Train RMSPE: 12.3225 RMSPE
Test RMSPE: 8.4916 RMSPE

Cumulative:
Train MSE Score: 0.00000004121034063308 MSE
Test MSE Score: 0.00000000535076653795 MSE
Train MAE Score: 0.00018938961617152685 MAE
Test MAE Score: 0.00005791951511444651 MAE
Train MAPE Score: 0.0762 MAPE
Test MAPE Score: 0.0070 MAPE
Train RMSE Score: 0.00020300330202506749 RMSE
Test RMSE Score: 0.00007314893394948376 RMSE
Train RMSPE: 0.1492 RMSPE
Test RMSPE: 0.0088 RMSPE

Time step: 10
Ratio: 0.8
Model type: CNN_LSTM_DNN
Epoch size: 1000
Batch size: 2
Early stop patience: 15, min delta: 0.0001
Model json: {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 10, 2], "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_5_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "batch_input_shape": [null, 10, 2], "dtype": "float32", "filters": 8, "kernel_size": [2], "strides": [1], "padding": "valid", "data_format": "channels_last", "dilation_rate": [1], "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_1", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 8, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "keras_version": "2.10.0", "backend": "tensorflow"}