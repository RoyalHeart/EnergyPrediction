в%
У
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.10.12v2.10.0-76-gfdfc646704c8ЄЩ"

 Adam/lstm_17/lstm_cell_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/v

4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/v*
_output_shapes	
:*
dtype0
Е
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
Ў
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v*
_output_shapes
:	d*
dtype0
Ђ
"Adam/lstm_17/lstm_cell_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/v

6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/v* 
_output_shapes
:
Ш*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_16/lstm_cell_16/bias/v

4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/v*
_output_shapes	
: *
dtype0
Ж
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
Џ
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v* 
_output_shapes
:
Ш *
dtype0
Ђ
"Adam/lstm_16/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/v

6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/v* 
_output_shapes
:
 *
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:*
dtype0

Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_25/kernel/v

*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
:*
dtype0

Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_24/kernel/v

*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes

:d*
dtype0

Adam/conv1d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_9/bias/v
z
(Adam/conv1d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/v*
_output_shapes	
:*
dtype0

Adam/conv1d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_9/kernel/v

*Adam/conv1d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/v*#
_output_shapes
:*
dtype0

 Adam/lstm_17/lstm_cell_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_17/lstm_cell_17/bias/m

4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_17/lstm_cell_17/bias/m*
_output_shapes	
:*
dtype0
Е
,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*=
shared_name.,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
Ў
@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m*
_output_shapes
:	d*
dtype0
Ђ
"Adam/lstm_17/lstm_cell_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*3
shared_name$"Adam/lstm_17/lstm_cell_17/kernel/m

6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_17/lstm_cell_17/kernel/m* 
_output_shapes
:
Ш*
dtype0

 Adam/lstm_16/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_16/lstm_cell_16/bias/m

4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_16/lstm_cell_16/bias/m*
_output_shapes	
: *
dtype0
Ж
,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *=
shared_name.,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
Џ
@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m* 
_output_shapes
:
Ш *
dtype0
Ђ
"Adam/lstm_16/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *3
shared_name$"Adam/lstm_16/lstm_cell_16/kernel/m

6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_16/lstm_cell_16/kernel/m* 
_output_shapes
:
 *
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:*
dtype0

Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:*
dtype0

Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_25/kernel/m

*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
:*
dtype0

Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_24/kernel/m

*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes

:d*
dtype0

Adam/conv1d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_9/bias/m
z
(Adam/conv1d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/m*
_output_shapes	
:*
dtype0

Adam/conv1d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_9/kernel/m

*Adam/conv1d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/m*#
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

lstm_17/lstm_cell_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_17/lstm_cell_17/bias

-lstm_17/lstm_cell_17/bias/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/bias*
_output_shapes	
:*
dtype0
Ї
%lstm_17/lstm_cell_17/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*6
shared_name'%lstm_17/lstm_cell_17/recurrent_kernel
 
9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_17/lstm_cell_17/recurrent_kernel*
_output_shapes
:	d*
dtype0

lstm_17/lstm_cell_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш*,
shared_namelstm_17/lstm_cell_17/kernel

/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOpReadVariableOplstm_17/lstm_cell_17/kernel* 
_output_shapes
:
Ш*
dtype0

lstm_16/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_16/lstm_cell_16/bias

-lstm_16/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/bias*
_output_shapes	
: *
dtype0
Ј
%lstm_16/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ш *6
shared_name'%lstm_16/lstm_cell_16/recurrent_kernel
Ё
9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_16/lstm_cell_16/recurrent_kernel* 
_output_shapes
:
Ш *
dtype0

lstm_16/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *,
shared_namelstm_16/lstm_cell_16/kernel

/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell_16/kernel* 
_output_shapes
:
 *
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:d*
dtype0
s
conv1d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_9/bias
l
!conv1d_9/bias/Read/ReadVariableOpReadVariableOpconv1d_9/bias*
_output_shapes	
:*
dtype0

conv1d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_9/kernel
x
#conv1d_9/kernel/Read/ReadVariableOpReadVariableOpconv1d_9/kernel*#
_output_shapes
:*
dtype0

serving_default_conv1d_9_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_9_inputconv1d_9/kernelconv1d_9/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_5890402

NoOpNoOp
Ћa
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ц`
valueм`Bй` Bв`
Ж
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
 cell
!
state_spec*
С
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_random_generator
)cell
*
state_spec*
І
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias*
І
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
І
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
j
0
1
C2
D3
E4
F5
G6
H7
18
29
910
:11
A12
B13*
j
0
1
C2
D3
E4
F5
G6
H7
18
29
910
:11
A12
B13*
* 
А
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
* 
м
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemЛmМ1mН2mО9mП:mРAmСBmТCmУDmФEmХFmЦGmЧHmШvЩvЪ1vЫ2vЬ9vЭ:vЮAvЯBvаCvбDvвEvгFvдGvеHvж*

[serving_default* 

0
1*

0
1*
* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

atrace_0* 

btrace_0* 
_Y
VARIABLE_VALUEconv1d_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_9/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

C0
D1
E2*

C0
D1
E2*
* 


cstates
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
itrace_0
jtrace_1
ktrace_2
ltrace_3* 
6
mtrace_0
ntrace_1
otrace_2
ptrace_3* 
* 
у
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator
x
state_size

Ckernel
Drecurrent_kernel
Ebias*
* 

F0
G1
H2*

F0
G1
H2*
* 


ystates
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
9
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
ы
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

Fkernel
Grecurrent_kernel
Hbias*
* 

10
21*

10
21*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Ђtrace_0* 

Ѓtrace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_16/lstm_cell_16/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_16/lstm_cell_16/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_16/lstm_cell_16/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_17/lstm_cell_17/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_17/lstm_cell_17/recurrent_kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_17/lstm_cell_17/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

Є0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

 0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1
E2*

C0
D1
E2*
* 

Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

Њtrace_0
Ћtrace_1* 

Ќtrace_0
­trace_1* 
* 
* 
* 
* 

)0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

F0
G1
H2*

F0
G1
H2*
* 

Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Гtrace_0
Дtrace_1* 

Еtrace_0
Жtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
З	variables
И	keras_api

Йtotal

Кcount*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Й0
К1*

З	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv1d_9/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_9/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv1d_9/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_9/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_16/lstm_cell_16/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_16/lstm_cell_16/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_16/lstm_cell_16/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_17/lstm_cell_17/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_17/lstm_cell_17/recurrent_kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_17/lstm_cell_17/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ѕ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_9/kernel/Read/ReadVariableOp!conv1d_9/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp/lstm_16/lstm_cell_16/kernel/Read/ReadVariableOp9lstm_16/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp-lstm_16/lstm_cell_16/bias/Read/ReadVariableOp/lstm_17/lstm_cell_17/kernel/Read/ReadVariableOp9lstm_17/lstm_cell_17/recurrent_kernel/Read/ReadVariableOp-lstm_17/lstm_cell_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_9/kernel/m/Read/ReadVariableOp(Adam/conv1d_9/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/m/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/m/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/m/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/m/Read/ReadVariableOp*Adam/conv1d_9/kernel/v/Read/ReadVariableOp(Adam/conv1d_9/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp6Adam/lstm_16/lstm_cell_16/kernel/v/Read/ReadVariableOp@Adam/lstm_16/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_16/lstm_cell_16/bias/v/Read/ReadVariableOp6Adam/lstm_17/lstm_cell_17/kernel/v/Read/ReadVariableOp@Adam/lstm_17/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_17/lstm_cell_17/bias/v/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_5892784

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_9/kernelconv1d_9/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/biaslstm_16/lstm_cell_16/kernel%lstm_16/lstm_cell_16/recurrent_kernellstm_16/lstm_cell_16/biaslstm_17/lstm_cell_17/kernel%lstm_17/lstm_cell_17/recurrent_kernellstm_17/lstm_cell_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_9/kernel/mAdam/conv1d_9/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/m"Adam/lstm_16/lstm_cell_16/kernel/m,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m Adam/lstm_16/lstm_cell_16/bias/m"Adam/lstm_17/lstm_cell_17/kernel/m,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m Adam/lstm_17/lstm_cell_17/bias/mAdam/conv1d_9/kernel/vAdam/conv1d_9/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/v"Adam/lstm_16/lstm_cell_16/kernel/v,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v Adam/lstm_16/lstm_cell_16/bias/v"Adam/lstm_17/lstm_cell_17/kernel/v,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v Adam/lstm_17/lstm_cell_17/bias/v*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_5892941ии 
ѓ
ј
.__inference_lstm_cell_17_layer_call_fn_5892550

inputs
states_0
states_1
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
$
ь
while_body_5889093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_17_5889117_0:
Ш/
while_lstm_cell_17_5889119_0:	d+
while_lstm_cell_17_5889121_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_17_5889117:
Ш-
while_lstm_cell_17_5889119:	d)
while_lstm_cell_17_5889121:	Ђ*while/lstm_cell_17/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0К
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_5889117_0while_lstm_cell_17_5889119_0while_lstm_cell_17_5889121_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889078r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_17/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_17_5889117while_lstm_cell_17_5889117_0":
while_lstm_cell_17_5889119while_lstm_cell_17_5889119_0":
while_lstm_cell_17_5889121while_lstm_cell_17_5889121_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
ВK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5889688

inputs?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5889603*
condR
while_cond_5889602*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
Ѓ

(sequential_10_lstm_17_while_cond_5888557H
Dsequential_10_lstm_17_while_sequential_10_lstm_17_while_loop_counterN
Jsequential_10_lstm_17_while_sequential_10_lstm_17_while_maximum_iterations+
'sequential_10_lstm_17_while_placeholder-
)sequential_10_lstm_17_while_placeholder_1-
)sequential_10_lstm_17_while_placeholder_2-
)sequential_10_lstm_17_while_placeholder_3J
Fsequential_10_lstm_17_while_less_sequential_10_lstm_17_strided_slice_1a
]sequential_10_lstm_17_while_sequential_10_lstm_17_while_cond_5888557___redundant_placeholder0a
]sequential_10_lstm_17_while_sequential_10_lstm_17_while_cond_5888557___redundant_placeholder1a
]sequential_10_lstm_17_while_sequential_10_lstm_17_while_cond_5888557___redundant_placeholder2a
]sequential_10_lstm_17_while_sequential_10_lstm_17_while_cond_5888557___redundant_placeholder3(
$sequential_10_lstm_17_while_identity
К
 sequential_10/lstm_17/while/LessLess'sequential_10_lstm_17_while_placeholderFsequential_10_lstm_17_while_less_sequential_10_lstm_17_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_17/while/IdentityIdentity$sequential_10/lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_17_while_identity-sequential_10/lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:

Й
)__inference_lstm_17_layer_call_fn_5891759
inputs_0
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889356o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
"
_user_specified_name
inputs/0
ВK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5892216

inputs?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5892131*
condR
while_cond_5892130*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
 R

(sequential_10_lstm_16_while_body_5888418H
Dsequential_10_lstm_16_while_sequential_10_lstm_16_while_loop_counterN
Jsequential_10_lstm_16_while_sequential_10_lstm_16_while_maximum_iterations+
'sequential_10_lstm_16_while_placeholder-
)sequential_10_lstm_16_while_placeholder_1-
)sequential_10_lstm_16_while_placeholder_2-
)sequential_10_lstm_16_while_placeholder_3G
Csequential_10_lstm_16_while_sequential_10_lstm_16_strided_slice_1_0
sequential_10_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_16_tensorarrayunstack_tensorlistfromtensor_0]
Isequential_10_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:
 _
Ksequential_10_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш Y
Jsequential_10_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	 (
$sequential_10_lstm_16_while_identity*
&sequential_10_lstm_16_while_identity_1*
&sequential_10_lstm_16_while_identity_2*
&sequential_10_lstm_16_while_identity_3*
&sequential_10_lstm_16_while_identity_4*
&sequential_10_lstm_16_while_identity_5E
Asequential_10_lstm_16_while_sequential_10_lstm_16_strided_slice_1
}sequential_10_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_16_tensorarrayunstack_tensorlistfromtensor[
Gsequential_10_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:
 ]
Isequential_10_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш W
Hsequential_10_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ?sequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ>sequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ@sequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
Msequential_10/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential_10/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_16_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_16_while_placeholderVsequential_10/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Ъ
>sequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpIsequential_10_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0ќ
/sequential_10/lstm_16/while/lstm_cell_16/MatMulMatMulFsequential_10/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ю
@sequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpKsequential_10_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0у
1sequential_10/lstm_16/while/lstm_cell_16/MatMul_1MatMul)sequential_10_lstm_16_while_placeholder_2Hsequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ р
,sequential_10/lstm_16/while/lstm_cell_16/addAddV29sequential_10/lstm_16/while/lstm_cell_16/MatMul:product:0;sequential_10/lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ Ч
?sequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpJsequential_10_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0щ
0sequential_10/lstm_16/while/lstm_cell_16/BiasAddBiasAdd0sequential_10/lstm_16/while/lstm_cell_16/add:z:0Gsequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ z
8sequential_10/lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Е
.sequential_10/lstm_16/while/lstm_cell_16/splitSplitAsequential_10/lstm_16/while/lstm_cell_16/split/split_dim:output:09sequential_10/lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splitЇ
0sequential_10/lstm_16/while/lstm_cell_16/SigmoidSigmoid7sequential_10/lstm_16/while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШЉ
2sequential_10/lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid7sequential_10/lstm_16/while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШЩ
,sequential_10/lstm_16/while/lstm_cell_16/mulMul6sequential_10/lstm_16/while/lstm_cell_16/Sigmoid_1:y:0)sequential_10_lstm_16_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШЁ
-sequential_10/lstm_16/while/lstm_cell_16/ReluRelu7sequential_10/lstm_16/while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШл
.sequential_10/lstm_16/while/lstm_cell_16/mul_1Mul4sequential_10/lstm_16/while/lstm_cell_16/Sigmoid:y:0;sequential_10/lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШа
.sequential_10/lstm_16/while/lstm_cell_16/add_1AddV20sequential_10/lstm_16/while/lstm_cell_16/mul:z:02sequential_10/lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЉ
2sequential_10/lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid7sequential_10/lstm_16/while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
/sequential_10/lstm_16/while/lstm_cell_16/Relu_1Relu2sequential_10/lstm_16/while/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШп
.sequential_10/lstm_16/while/lstm_cell_16/mul_2Mul6sequential_10/lstm_16/while/lstm_cell_16/Sigmoid_2:y:0=sequential_10/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
@sequential_10/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_16_while_placeholder_1'sequential_10_lstm_16_while_placeholder2sequential_10/lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_10/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_10/lstm_16/while/addAddV2'sequential_10_lstm_16_while_placeholder*sequential_10/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_10/lstm_16/while/add_1AddV2Dsequential_10_lstm_16_while_sequential_10_lstm_16_while_loop_counter,sequential_10/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_10/lstm_16/while/IdentityIdentity%sequential_10/lstm_16/while/add_1:z:0!^sequential_10/lstm_16/while/NoOp*
T0*
_output_shapes
: Т
&sequential_10/lstm_16/while/Identity_1IdentityJsequential_10_lstm_16_while_sequential_10_lstm_16_while_maximum_iterations!^sequential_10/lstm_16/while/NoOp*
T0*
_output_shapes
: 
&sequential_10/lstm_16/while/Identity_2Identity#sequential_10/lstm_16/while/add:z:0!^sequential_10/lstm_16/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_10/lstm_16/while/Identity_3IdentityPsequential_10/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_16/while/NoOp*
T0*
_output_shapes
: М
&sequential_10/lstm_16/while/Identity_4Identity2sequential_10/lstm_16/while/lstm_cell_16/mul_2:z:0!^sequential_10/lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШМ
&sequential_10/lstm_16/while/Identity_5Identity2sequential_10/lstm_16/while/lstm_cell_16/add_1:z:0!^sequential_10/lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШЈ
 sequential_10/lstm_16/while/NoOpNoOp@^sequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?^sequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpA^sequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_16_while_identity-sequential_10/lstm_16/while/Identity:output:0"Y
&sequential_10_lstm_16_while_identity_1/sequential_10/lstm_16/while/Identity_1:output:0"Y
&sequential_10_lstm_16_while_identity_2/sequential_10/lstm_16/while/Identity_2:output:0"Y
&sequential_10_lstm_16_while_identity_3/sequential_10/lstm_16/while/Identity_3:output:0"Y
&sequential_10_lstm_16_while_identity_4/sequential_10/lstm_16/while/Identity_4:output:0"Y
&sequential_10_lstm_16_while_identity_5/sequential_10/lstm_16/while/Identity_5:output:0"
Hsequential_10_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resourceJsequential_10_lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"
Isequential_10_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resourceKsequential_10_lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"
Gsequential_10_lstm_16_while_lstm_cell_16_matmul_readvariableop_resourceIsequential_10_lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"
Asequential_10_lstm_16_while_sequential_10_lstm_16_strided_slice_1Csequential_10_lstm_16_while_sequential_10_lstm_16_strided_slice_1_0"
}sequential_10_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_16_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2
?sequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp?sequential_10/lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2
>sequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp>sequential_10/lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2
@sequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp@sequential_10/lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
ЧJ

D__inference_lstm_16_layer_call_and_return_conditional_losses_5889536

inputs?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5889452*
condR
while_cond_5889451*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
З
)__inference_lstm_17_layer_call_fn_5891781

inputs
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889964o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
ЧJ

D__inference_lstm_16_layer_call_and_return_conditional_losses_5891594

inputs?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891510*
condR
while_cond_5891509*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш	
і
E__inference_dense_25_layer_call_and_return_conditional_losses_5892399

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї8
е
while_body_5891224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
ВK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5892361

inputs?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5892276*
condR
while_cond_5892275*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
г

E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388

inputsB
+conv1d_expanddims_1_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ё
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:Ў
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_5889602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5889602___redundant_placeholder05
1while_while_cond_5889602___redundant_placeholder15
1while_while_cond_5889602___redundant_placeholder25
1while_while_cond_5889602___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ш	
і
E__inference_dense_24_layer_call_and_return_conditional_losses_5892380

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
К
Ш
while_cond_5892275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5892275___redundant_placeholder05
1while_while_cond_5892275___redundant_placeholder15
1while_while_cond_5892275___redundant_placeholder25
1while_while_cond_5892275___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
­9
г
while_body_5889603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
рA
е

lstm_16_while_body_5890539,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0O
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:
 Q
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш K
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorM
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:
 O
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш I
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Я
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0в
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ В
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Й
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ж
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ Ћ
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0П
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ l
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШБ
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШІ
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЕ
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШх
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ№
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
Ї

(sequential_10_lstm_16_while_cond_5888417H
Dsequential_10_lstm_16_while_sequential_10_lstm_16_while_loop_counterN
Jsequential_10_lstm_16_while_sequential_10_lstm_16_while_maximum_iterations+
'sequential_10_lstm_16_while_placeholder-
)sequential_10_lstm_16_while_placeholder_1-
)sequential_10_lstm_16_while_placeholder_2-
)sequential_10_lstm_16_while_placeholder_3J
Fsequential_10_lstm_16_while_less_sequential_10_lstm_16_strided_slice_1a
]sequential_10_lstm_16_while_sequential_10_lstm_16_while_cond_5888417___redundant_placeholder0a
]sequential_10_lstm_16_while_sequential_10_lstm_16_while_cond_5888417___redundant_placeholder1a
]sequential_10_lstm_16_while_sequential_10_lstm_16_while_cond_5888417___redundant_placeholder2a
]sequential_10_lstm_16_while_sequential_10_lstm_16_while_cond_5888417___redundant_placeholder3(
$sequential_10_lstm_16_while_identity
К
 sequential_10/lstm_16/while/LessLess'sequential_10_lstm_16_while_placeholderFsequential_10_lstm_16_while_less_sequential_10_lstm_16_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_16/while/IdentityIdentity$sequential_10/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_16_while_identity-sequential_10/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_5892130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5892130___redundant_placeholder05
1while_while_cond_5892130___redundant_placeholder15
1while_while_cond_5892130___redundant_placeholder25
1while_while_cond_5892130___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
г

E__inference_conv1d_9_layer_call_and_return_conditional_losses_5891121

inputsB
+conv1d_expanddims_1_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ё
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:Ў
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Д
К
)__inference_lstm_16_layer_call_fn_5891132
inputs_0
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5888811}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
9

D__inference_lstm_17_layer_call_and_return_conditional_losses_5889163

inputs(
lstm_cell_17_5889079:
Ш'
lstm_cell_17_5889081:	d#
lstm_cell_17_5889083:	
identityЂ$lstm_cell_17/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maskќ
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_5889079lstm_cell_17_5889081lstm_cell_17_5889083*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889078n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_5889079lstm_cell_17_5889081lstm_cell_17_5889083*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5889093*
condR
while_cond_5889092*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdu
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
 
_user_specified_nameinputs
О
Ш
while_cond_5888741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5888741___redundant_placeholder05
1while_while_cond_5888741___redundant_placeholder15
1while_while_cond_5888741___redundant_placeholder25
1while_while_cond_5888741___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:


ш
lstm_17_while_cond_5890678,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1E
Alstm_17_while_lstm_17_while_cond_5890678___redundant_placeholder0E
Alstm_17_while_lstm_17_while_cond_5890678___redundant_placeholder1E
Alstm_17_while_lstm_17_while_cond_5890678___redundant_placeholder2E
Alstm_17_while_lstm_17_while_cond_5890678___redundant_placeholder3
lstm_17_while_identity

lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: [
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
О
Ш
while_cond_5889451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5889451___redundant_placeholder05
1while_while_cond_5889451___redundant_placeholder15
1while_while_cond_5889451___redundant_placeholder25
1while_while_cond_5889451___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
п

*__inference_conv1d_9_layer_call_fn_5891105

inputs
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ј

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892516

inputs
states_0
states_12
matmul_readvariableop_resource:
 4
 matmul_1_readvariableop_resource:
Ш .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџШV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/1


ш
lstm_16_while_cond_5890852,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_5890852___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_5890852___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_5890852___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_5890852___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
юB
г

lstm_17_while_body_5890679,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0O
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:
ШP
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dK
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:	
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorM
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:
ШN
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:	dI
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpЂ0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpЂ2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Я
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0Ў
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0в
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdz
8lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1Alstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: q
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_17/while/NoOpNoOp2^lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"z
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"Ш
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
к

I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889078

inputs

states
states_12
matmul_readvariableop_resource:
Ш3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
ў
љ
.__inference_lstm_cell_16_layer_call_fn_5892435

inputs
states_0
states_1
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identity

identity_1

identity_2ЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888728p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/1
ъ
і
/__inference_sequential_10_layer_call_fn_5890468

inputs
unknown:
	unknown_0:	
	unknown_1:
 
	unknown_2:
Ш 
	unknown_3:	 
	unknown_4:
Ш
	unknown_5:	d
	unknown_6:	
	unknown_7:d
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЧJ

D__inference_lstm_16_layer_call_and_return_conditional_losses_5891737

inputs?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891653*
condR
while_cond_5891652*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­9
г
while_body_5892131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
№

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888728

inputs

states
states_12
matmul_readvariableop_resource:
 4
 matmul_1_readvariableop_resource:
Ш .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџШV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates
К
Ш
while_cond_5889092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5889092___redundant_placeholder05
1while_while_cond_5889092___redundant_placeholder15
1while_while_cond_5889092___redundant_placeholder25
1while_while_cond_5889092___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
Ч

*__inference_dense_25_layer_call_fn_5892389

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
K
 
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891308
inputs_0?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891224*
condR
while_cond_5891223*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0

И
)__inference_lstm_16_layer_call_fn_5891154

inputs
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5889536t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш	
і
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

И
)__inference_lstm_16_layer_call_fn_5891165

inputs
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5890129t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ъ
і
/__inference_sequential_10_layer_call_fn_5890435

inputs
unknown:
	unknown_0:	
	unknown_1:
 
	unknown_2:
Ш 
	unknown_3:	 
	unknown_4:
Ш
	unknown_5:	d
	unknown_6:	
	unknown_7:d
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_5889745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
юB
г

lstm_17_while_body_5890993,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3+
'lstm_17_while_lstm_17_strided_slice_1_0g
clstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0O
;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:
ШP
=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dK
<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:	
lstm_17_while_identity
lstm_17_while_identity_1
lstm_17_while_identity_2
lstm_17_while_identity_3
lstm_17_while_identity_4
lstm_17_while_identity_5)
%lstm_17_while_lstm_17_strided_slice_1e
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorM
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:
ШN
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:	dI
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpЂ0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpЂ2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp
?lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Я
1lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0lstm_17_while_placeholderHlstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0Ў
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0в
!lstm_17/while/lstm_cell_17/MatMulMatMul8lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Й
#lstm_17/while/lstm_cell_17/MatMul_1MatMullstm_17_while_placeholder_2:lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_17/while/lstm_cell_17/addAddV2+lstm_17/while/lstm_cell_17/MatMul:product:0-lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_17/while/lstm_cell_17/BiasAddBiasAdd"lstm_17/while/lstm_cell_17/add:z:09lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_17/while/lstm_cell_17/splitSplit3lstm_17/while/lstm_cell_17/split/split_dim:output:0+lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
"lstm_17/while/lstm_cell_17/SigmoidSigmoid)lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid)lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/lstm_cell_17/mulMul(lstm_17/while/lstm_cell_17/Sigmoid_1:y:0lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/lstm_cell_17/ReluRelu)lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdА
 lstm_17/while/lstm_cell_17/mul_1Mul&lstm_17/while/lstm_cell_17/Sigmoid:y:0-lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЅ
 lstm_17/while/lstm_cell_17/add_1AddV2"lstm_17/while/lstm_cell_17/mul:z:0$lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
$lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid)lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
!lstm_17/while/lstm_cell_17/Relu_1Relu$lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdД
 lstm_17/while/lstm_cell_17/mul_2Mul(lstm_17/while/lstm_cell_17/Sigmoid_2:y:0/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdz
8lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_17_while_placeholder_1Alstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_17/while/addAddV2lstm_17_while_placeholderlstm_17/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_17/while/add_1AddV2(lstm_17_while_lstm_17_while_loop_counterlstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_17/while/IdentityIdentitylstm_17/while/add_1:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_1Identity.lstm_17_while_lstm_17_while_maximum_iterations^lstm_17/while/NoOp*
T0*
_output_shapes
: q
lstm_17/while/Identity_2Identitylstm_17/while/add:z:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_3IdentityBlstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_17/while/NoOp*
T0*
_output_shapes
: 
lstm_17/while/Identity_4Identity$lstm_17/while/lstm_cell_17/mul_2:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/while/Identity_5Identity$lstm_17/while/lstm_cell_17/add_1:z:0^lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd№
lstm_17/while/NoOpNoOp2^lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1^lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp3^lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_17_while_identitylstm_17/while/Identity:output:0"=
lstm_17_while_identity_1!lstm_17/while/Identity_1:output:0"=
lstm_17_while_identity_2!lstm_17/while/Identity_2:output:0"=
lstm_17_while_identity_3!lstm_17/while/Identity_3:output:0"=
lstm_17_while_identity_4!lstm_17/while/Identity_4:output:0"=
lstm_17_while_identity_5!lstm_17/while/Identity_5:output:0"P
%lstm_17_while_lstm_17_strided_slice_1'lstm_17_while_lstm_17_strided_slice_1_0"z
:lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource<lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource=lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9lstm_17_while_lstm_cell_17_matmul_readvariableop_resource;lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"Ш
alstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensorclstm_17_while_tensorarrayv2read_tensorlistgetitem_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2f
1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp1lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp0lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2h
2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp2lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
K
 
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891451
inputs_0?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891367*
condR
while_cond_5891366*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
З8

D__inference_lstm_16_layer_call_and_return_conditional_losses_5888811

inputs(
lstm_cell_16_5888729:
 (
lstm_cell_16_5888731:
Ш #
lstm_cell_16_5888733:	 
identityЂ$lstm_cell_16/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskџ
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_5888729lstm_cell_16_5888731lstm_cell_16_5888733*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888728n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_5888729lstm_cell_16_5888731lstm_cell_16_5888733*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5888742*
condR
while_cond_5888741*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШu
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
­9
г
while_body_5891986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
9

D__inference_lstm_17_layer_call_and_return_conditional_losses_5889356

inputs(
lstm_cell_17_5889272:
Ш'
lstm_cell_17_5889274:	d#
lstm_cell_17_5889276:	
identityЂ$lstm_cell_17/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maskќ
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_5889272lstm_cell_17_5889274lstm_cell_17_5889276*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889226n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_5889272lstm_cell_17_5889274lstm_cell_17_5889276*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5889286*
condR
while_cond_5889285*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdu
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
 
_user_specified_nameinputs
Ч

*__inference_dense_24_layer_call_fn_5892370

inputs
unknown:d
	unknown_0:
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
З8

D__inference_lstm_16_layer_call_and_return_conditional_losses_5889002

inputs(
lstm_cell_16_5888920:
 (
lstm_cell_16_5888922:
Ш #
lstm_cell_16_5888924:	 
identityЂ$lstm_cell_16/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskџ
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_5888920lstm_cell_16_5888922lstm_cell_16_5888924*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888874n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_5888920lstm_cell_16_5888922lstm_cell_16_5888924*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5888933*
condR
while_cond_5888932*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШu
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
"
Њ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890361
conv1d_9_input'
conv1d_9_5890326:
conv1d_9_5890328:	#
lstm_16_5890331:
 #
lstm_16_5890333:
Ш 
lstm_16_5890335:	 #
lstm_17_5890338:
Ш"
lstm_17_5890340:	d
lstm_17_5890342:	"
dense_24_5890345:d
dense_24_5890347:"
dense_25_5890350:
dense_25_5890352:"
dense_26_5890355:
dense_26_5890357:
identityЂ conv1d_9/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCallconv1d_9_inputconv1d_9_5890326conv1d_9_5890328*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388­
lstm_16/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0lstm_16_5890331lstm_16_5890333lstm_16_5890335*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5890129Ї
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_5890338lstm_17_5890340lstm_17_5890342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889964
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_24_5890345dense_24_5890347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_5890350dense_25_5890352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_5890355dense_26_5890357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv1d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
­9
г
while_body_5891841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ц
Ќ 
#__inference__traced_restore_5892941
file_prefix7
 assignvariableop_conv1d_9_kernel:/
 assignvariableop_1_conv1d_9_bias:	4
"assignvariableop_2_dense_24_kernel:d.
 assignvariableop_3_dense_24_bias:4
"assignvariableop_4_dense_25_kernel:.
 assignvariableop_5_dense_25_bias:4
"assignvariableop_6_dense_26_kernel:.
 assignvariableop_7_dense_26_bias:B
.assignvariableop_8_lstm_16_lstm_cell_16_kernel:
 L
8assignvariableop_9_lstm_16_lstm_cell_16_recurrent_kernel:
Ш <
-assignvariableop_10_lstm_16_lstm_cell_16_bias:	 C
/assignvariableop_11_lstm_17_lstm_cell_17_kernel:
ШL
9assignvariableop_12_lstm_17_lstm_cell_17_recurrent_kernel:	d<
-assignvariableop_13_lstm_17_lstm_cell_17_bias:	'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: A
*assignvariableop_21_adam_conv1d_9_kernel_m:7
(assignvariableop_22_adam_conv1d_9_bias_m:	<
*assignvariableop_23_adam_dense_24_kernel_m:d6
(assignvariableop_24_adam_dense_24_bias_m:<
*assignvariableop_25_adam_dense_25_kernel_m:6
(assignvariableop_26_adam_dense_25_bias_m:<
*assignvariableop_27_adam_dense_26_kernel_m:6
(assignvariableop_28_adam_dense_26_bias_m:J
6assignvariableop_29_adam_lstm_16_lstm_cell_16_kernel_m:
 T
@assignvariableop_30_adam_lstm_16_lstm_cell_16_recurrent_kernel_m:
Ш C
4assignvariableop_31_adam_lstm_16_lstm_cell_16_bias_m:	 J
6assignvariableop_32_adam_lstm_17_lstm_cell_17_kernel_m:
ШS
@assignvariableop_33_adam_lstm_17_lstm_cell_17_recurrent_kernel_m:	dC
4assignvariableop_34_adam_lstm_17_lstm_cell_17_bias_m:	A
*assignvariableop_35_adam_conv1d_9_kernel_v:7
(assignvariableop_36_adam_conv1d_9_bias_v:	<
*assignvariableop_37_adam_dense_24_kernel_v:d6
(assignvariableop_38_adam_dense_24_bias_v:<
*assignvariableop_39_adam_dense_25_kernel_v:6
(assignvariableop_40_adam_dense_25_bias_v:<
*assignvariableop_41_adam_dense_26_kernel_v:6
(assignvariableop_42_adam_dense_26_bias_v:J
6assignvariableop_43_adam_lstm_16_lstm_cell_16_kernel_v:
 T
@assignvariableop_44_adam_lstm_16_lstm_cell_16_recurrent_kernel_v:
Ш C
4assignvariableop_45_adam_lstm_16_lstm_cell_16_bias_v:	 J
6assignvariableop_46_adam_lstm_17_lstm_cell_17_kernel_v:
ШS
@assignvariableop_47_adam_lstm_17_lstm_cell_17_recurrent_kernel_v:	dC
4assignvariableop_48_adam_lstm_17_lstm_cell_17_bias_v:	
identity_50ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*
valueBџ2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHд
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapesЫ
Ш::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv1d_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_24_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_24_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_25_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_25_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_26_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_26_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp.assignvariableop_8_lstm_16_lstm_cell_16_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_9AssignVariableOp8assignvariableop_9_lstm_16_lstm_cell_16_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp-assignvariableop_10_lstm_16_lstm_cell_16_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_17_lstm_cell_17_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_17_lstm_cell_17_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_17_lstm_cell_17_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_9_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_9_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_24_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_24_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_25_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_25_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_26_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_26_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_16_lstm_cell_16_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_16_lstm_cell_16_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_16_lstm_cell_16_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_17_lstm_cell_17_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_17_lstm_cell_17_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_17_lstm_cell_17_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_9_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_9_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_24_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_24_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_25_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_25_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_26_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_26_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_16_lstm_cell_16_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_44AssignVariableOp@assignvariableop_44_adam_lstm_16_lstm_cell_16_recurrent_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_lstm_16_lstm_cell_16_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_lstm_17_lstm_cell_17_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_47AssignVariableOp@assignvariableop_47_adam_lstm_17_lstm_cell_17_recurrent_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_17_lstm_cell_17_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_50IdentityIdentity_49:output:0^NoOp_1*
T0*
_output_shapes
: ђ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
#
ю
while_body_5888742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_16_5888766_0:
 0
while_lstm_cell_16_5888768_0:
Ш +
while_lstm_cell_16_5888770_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_16_5888766:
 .
while_lstm_cell_16_5888768:
Ш )
while_lstm_cell_16_5888770:	 Ђ*while/lstm_cell_16/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Н
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_5888766_0while_lstm_cell_16_5888768_0while_lstm_cell_16_5888770_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888728м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШy

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_16_5888766while_lstm_cell_16_5888766_0":
while_lstm_cell_16_5888768while_lstm_cell_16_5888768_0":
while_lstm_cell_16_5888770while_lstm_cell_16_5888770_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
Ш	
і
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Їј
Ъ
"__inference__wrapped_model_5888661
conv1d_9_inputY
Bsequential_10_conv1d_9_conv1d_expanddims_1_readvariableop_resource:E
6sequential_10_conv1d_9_biasadd_readvariableop_resource:	U
Asequential_10_lstm_16_lstm_cell_16_matmul_readvariableop_resource:
 W
Csequential_10_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:
Ш Q
Bsequential_10_lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	 U
Asequential_10_lstm_17_lstm_cell_17_matmul_readvariableop_resource:
ШV
Csequential_10_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:	dQ
Bsequential_10_lstm_17_lstm_cell_17_biasadd_readvariableop_resource:	G
5sequential_10_dense_24_matmul_readvariableop_resource:dD
6sequential_10_dense_24_biasadd_readvariableop_resource:G
5sequential_10_dense_25_matmul_readvariableop_resource:D
6sequential_10_dense_25_biasadd_readvariableop_resource:G
5sequential_10_dense_26_matmul_readvariableop_resource:D
6sequential_10_dense_26_biasadd_readvariableop_resource:
identityЂ-sequential_10/conv1d_9/BiasAdd/ReadVariableOpЂ9sequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpЂ-sequential_10/dense_24/BiasAdd/ReadVariableOpЂ,sequential_10/dense_24/MatMul/ReadVariableOpЂ-sequential_10/dense_25/BiasAdd/ReadVariableOpЂ,sequential_10/dense_25/MatMul/ReadVariableOpЂ-sequential_10/dense_26/BiasAdd/ReadVariableOpЂ,sequential_10/dense_26/MatMul/ReadVariableOpЂ9sequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ8sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ:sequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂsequential_10/lstm_16/whileЂ9sequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpЂ8sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOpЂ:sequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpЂsequential_10/lstm_17/whilew
,sequential_10/conv1d_9/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЗ
(sequential_10/conv1d_9/Conv1D/ExpandDims
ExpandDimsconv1d_9_input5sequential_10/conv1d_9/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџС
9sequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_10_conv1d_9_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0p
.sequential_10/conv1d_9/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ц
*sequential_10/conv1d_9/Conv1D/ExpandDims_1
ExpandDimsAsequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp:value:07sequential_10/conv1d_9/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ѓ
sequential_10/conv1d_9/Conv1DConv2D1sequential_10/conv1d_9/Conv1D/ExpandDims:output:03sequential_10/conv1d_9/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
Џ
%sequential_10/conv1d_9/Conv1D/SqueezeSqueeze&sequential_10/conv1d_9/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџЁ
-sequential_10/conv1d_9/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ч
sequential_10/conv1d_9/BiasAddBiasAdd.sequential_10/conv1d_9/Conv1D/Squeeze:output:05sequential_10/conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџ
sequential_10/conv1d_9/ReluRelu'sequential_10/conv1d_9/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџt
sequential_10/lstm_16/ShapeShape)sequential_10/conv1d_9/Relu:activations:0*
T0*
_output_shapes
:s
)sequential_10/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_10/lstm_16/strided_sliceStridedSlice$sequential_10/lstm_16/Shape:output:02sequential_10/lstm_16/strided_slice/stack:output:04sequential_10/lstm_16/strided_slice/stack_1:output:04sequential_10/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_10/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ШЕ
"sequential_10/lstm_16/zeros/packedPack,sequential_10/lstm_16/strided_slice:output:0-sequential_10/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Џ
sequential_10/lstm_16/zerosFill+sequential_10/lstm_16/zeros/packed:output:0*sequential_10/lstm_16/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
&sequential_10/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ШЙ
$sequential_10/lstm_16/zeros_1/packedPack,sequential_10/lstm_16/strided_slice:output:0/sequential_10/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
sequential_10/lstm_16/zeros_1Fill-sequential_10/lstm_16/zeros_1/packed:output:0,sequential_10/lstm_16/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
$sequential_10/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
sequential_10/lstm_16/transpose	Transpose)sequential_10/conv1d_9/Relu:activations:0-sequential_10/lstm_16/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџp
sequential_10/lstm_16/Shape_1Shape#sequential_10/lstm_16/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_10/lstm_16/strided_slice_1StridedSlice&sequential_10/lstm_16/Shape_1:output:04sequential_10/lstm_16/strided_slice_1/stack:output:06sequential_10/lstm_16/strided_slice_1/stack_1:output:06sequential_10/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_10/lstm_16/TensorArrayV2TensorListReserve:sequential_10/lstm_16/TensorArrayV2/element_shape:output:0.sequential_10/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_10/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential_10/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_16/transpose:y:0Tsequential_10/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_10/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
%sequential_10/lstm_16/strided_slice_2StridedSlice#sequential_10/lstm_16/transpose:y:04sequential_10/lstm_16/strided_slice_2/stack:output:06sequential_10/lstm_16/strided_slice_2/stack_1:output:06sequential_10/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskМ
8sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpAsequential_10_lstm_16_lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0и
)sequential_10/lstm_16/lstm_cell_16/MatMulMatMul.sequential_10/lstm_16/strided_slice_2:output:0@sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Р
:sequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpCsequential_10_lstm_16_lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0в
+sequential_10/lstm_16/lstm_cell_16/MatMul_1MatMul$sequential_10/lstm_16/zeros:output:0Bsequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ю
&sequential_10/lstm_16/lstm_cell_16/addAddV23sequential_10/lstm_16/lstm_cell_16/MatMul:product:05sequential_10/lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ Й
9sequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpBsequential_10_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0з
*sequential_10/lstm_16/lstm_cell_16/BiasAddBiasAdd*sequential_10/lstm_16/lstm_cell_16/add:z:0Asequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ t
2sequential_10/lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
(sequential_10/lstm_16/lstm_cell_16/splitSplit;sequential_10/lstm_16/lstm_cell_16/split/split_dim:output:03sequential_10/lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split
*sequential_10/lstm_16/lstm_cell_16/SigmoidSigmoid1sequential_10/lstm_16/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,sequential_10/lstm_16/lstm_cell_16/Sigmoid_1Sigmoid1sequential_10/lstm_16/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШК
&sequential_10/lstm_16/lstm_cell_16/mulMul0sequential_10/lstm_16/lstm_cell_16/Sigmoid_1:y:0&sequential_10/lstm_16/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
'sequential_10/lstm_16/lstm_cell_16/ReluRelu1sequential_10/lstm_16/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШЩ
(sequential_10/lstm_16/lstm_cell_16/mul_1Mul.sequential_10/lstm_16/lstm_cell_16/Sigmoid:y:05sequential_10/lstm_16/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШО
(sequential_10/lstm_16/lstm_cell_16/add_1AddV2*sequential_10/lstm_16/lstm_cell_16/mul:z:0,sequential_10/lstm_16/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
,sequential_10/lstm_16/lstm_cell_16/Sigmoid_2Sigmoid1sequential_10/lstm_16/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
)sequential_10/lstm_16/lstm_cell_16/Relu_1Relu,sequential_10/lstm_16/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЭ
(sequential_10/lstm_16/lstm_cell_16/mul_2Mul0sequential_10/lstm_16/lstm_cell_16/Sigmoid_2:y:07sequential_10/lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
3sequential_10/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   њ
%sequential_10/lstm_16/TensorArrayV2_1TensorListReserve<sequential_10/lstm_16/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_10/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_10/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
sequential_10/lstm_16/whileWhile1sequential_10/lstm_16/while/loop_counter:output:07sequential_10/lstm_16/while/maximum_iterations:output:0#sequential_10/lstm_16/time:output:0.sequential_10/lstm_16/TensorArrayV2_1:handle:0$sequential_10/lstm_16/zeros:output:0&sequential_10/lstm_16/zeros_1:output:0.sequential_10/lstm_16/strided_slice_1:output:0Msequential_10/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_10_lstm_16_lstm_cell_16_matmul_readvariableop_resourceCsequential_10_lstm_16_lstm_cell_16_matmul_1_readvariableop_resourceBsequential_10_lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_10_lstm_16_while_body_5888418*4
cond,R*
(sequential_10_lstm_16_while_cond_5888417*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
Fsequential_10/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   
8sequential_10/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_16/while:output:3Osequential_10/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0~
+sequential_10/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_10/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:і
%sequential_10/lstm_16/strided_slice_3StridedSliceAsequential_10/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_16/strided_slice_3/stack:output:06sequential_10/lstm_16/strided_slice_3/stack_1:output:06sequential_10/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask{
&sequential_10/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          й
!sequential_10/lstm_16/transpose_1	TransposeAsequential_10/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_16/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШq
sequential_10/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
sequential_10/lstm_17/ShapeShape%sequential_10/lstm_16/transpose_1:y:0*
T0*
_output_shapes
:s
)sequential_10/lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_10/lstm_17/strided_sliceStridedSlice$sequential_10/lstm_17/Shape:output:02sequential_10/lstm_17/strided_slice/stack:output:04sequential_10/lstm_17/strided_slice/stack_1:output:04sequential_10/lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_10/lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЕ
"sequential_10/lstm_17/zeros/packedPack,sequential_10/lstm_17/strided_slice:output:0-sequential_10/lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_10/lstm_17/zerosFill+sequential_10/lstm_17/zeros/packed:output:0*sequential_10/lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
&sequential_10/lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dЙ
$sequential_10/lstm_17/zeros_1/packedPack,sequential_10/lstm_17/strided_slice:output:0/sequential_10/lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_10/lstm_17/zeros_1Fill-sequential_10/lstm_17/zeros_1/packed:output:0,sequential_10/lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdy
$sequential_10/lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
sequential_10/lstm_17/transpose	Transpose%sequential_10/lstm_16/transpose_1:y:0-sequential_10/lstm_17/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШp
sequential_10/lstm_17/Shape_1Shape#sequential_10/lstm_17/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_10/lstm_17/strided_slice_1StridedSlice&sequential_10/lstm_17/Shape_1:output:04sequential_10/lstm_17/strided_slice_1/stack:output:06sequential_10/lstm_17/strided_slice_1/stack_1:output:06sequential_10/lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_10/lstm_17/TensorArrayV2TensorListReserve:sequential_10/lstm_17/TensorArrayV2/element_shape:output:0.sequential_10/lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_10/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ђ
=sequential_10/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_17/transpose:y:0Tsequential_10/lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_10/lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
%sequential_10/lstm_17/strided_slice_2StridedSlice#sequential_10/lstm_17/transpose:y:04sequential_10/lstm_17/strided_slice_2/stack:output:06sequential_10/lstm_17/strided_slice_2/stack_1:output:06sequential_10/lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maskМ
8sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpAsequential_10_lstm_17_lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0и
)sequential_10/lstm_17/lstm_cell_17/MatMulMatMul.sequential_10/lstm_17/strided_slice_2:output:0@sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
:sequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpCsequential_10_lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0в
+sequential_10/lstm_17/lstm_cell_17/MatMul_1MatMul$sequential_10/lstm_17/zeros:output:0Bsequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЮ
&sequential_10/lstm_17/lstm_cell_17/addAddV23sequential_10/lstm_17/lstm_cell_17/MatMul:product:05sequential_10/lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
9sequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpBsequential_10_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0з
*sequential_10/lstm_17/lstm_cell_17/BiasAddBiasAdd*sequential_10/lstm_17/lstm_cell_17/add:z:0Asequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџt
2sequential_10/lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_10/lstm_17/lstm_cell_17/splitSplit;sequential_10/lstm_17/lstm_cell_17/split/split_dim:output:03sequential_10/lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split
*sequential_10/lstm_17/lstm_cell_17/SigmoidSigmoid1sequential_10/lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_10/lstm_17/lstm_cell_17/Sigmoid_1Sigmoid1sequential_10/lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdЙ
&sequential_10/lstm_17/lstm_cell_17/mulMul0sequential_10/lstm_17/lstm_cell_17/Sigmoid_1:y:0&sequential_10/lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
'sequential_10/lstm_17/lstm_cell_17/ReluRelu1sequential_10/lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdШ
(sequential_10/lstm_17/lstm_cell_17/mul_1Mul.sequential_10/lstm_17/lstm_cell_17/Sigmoid:y:05sequential_10/lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdН
(sequential_10/lstm_17/lstm_cell_17/add_1AddV2*sequential_10/lstm_17/lstm_cell_17/mul:z:0,sequential_10/lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
,sequential_10/lstm_17/lstm_cell_17/Sigmoid_2Sigmoid1sequential_10/lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
)sequential_10/lstm_17/lstm_cell_17/Relu_1Relu,sequential_10/lstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЬ
(sequential_10/lstm_17/lstm_cell_17/mul_2Mul0sequential_10/lstm_17/lstm_cell_17/Sigmoid_2:y:07sequential_10/lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
3sequential_10/lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   t
2sequential_10/lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_10/lstm_17/TensorArrayV2_1TensorListReserve<sequential_10/lstm_17/TensorArrayV2_1/element_shape:output:0;sequential_10/lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_10/lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_10/lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : И
sequential_10/lstm_17/whileWhile1sequential_10/lstm_17/while/loop_counter:output:07sequential_10/lstm_17/while/maximum_iterations:output:0#sequential_10/lstm_17/time:output:0.sequential_10/lstm_17/TensorArrayV2_1:handle:0$sequential_10/lstm_17/zeros:output:0&sequential_10/lstm_17/zeros_1:output:0.sequential_10/lstm_17/strided_slice_1:output:0Msequential_10/lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_10_lstm_17_lstm_cell_17_matmul_readvariableop_resourceCsequential_10_lstm_17_lstm_cell_17_matmul_1_readvariableop_resourceBsequential_10_lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_10_lstm_17_while_body_5888558*4
cond,R*
(sequential_10_lstm_17_while_cond_5888557*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
Fsequential_10/lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   
8sequential_10/lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_17/while:output:3Osequential_10/lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elements~
+sequential_10/lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_10/lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential_10/lstm_17/strided_slice_3StridedSliceAsequential_10/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_17/strided_slice_3/stack:output:06sequential_10/lstm_17/strided_slice_3/stack_1:output:06sequential_10/lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_mask{
&sequential_10/lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential_10/lstm_17/transpose_1	TransposeAsequential_10/lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdq
sequential_10/lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
,sequential_10/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0П
sequential_10/dense_24/MatMulMatMul.sequential_10/lstm_17/strided_slice_3:output:04sequential_10/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_10/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_10/dense_24/BiasAddBiasAdd'sequential_10/dense_24/MatMul:product:05sequential_10/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
,sequential_10/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_10/dense_25/MatMulMatMul'sequential_10/dense_24/BiasAdd:output:04sequential_10/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_10/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_10/dense_25/BiasAddBiasAdd'sequential_10/dense_25/MatMul:product:05sequential_10/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
,sequential_10/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_10/dense_26/MatMulMatMul'sequential_10/dense_25/BiasAdd:output:04sequential_10/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_10/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_10/dense_26/BiasAddBiasAdd'sequential_10/dense_26/MatMul:product:05sequential_10/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_10/dense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџѓ
NoOpNoOp.^sequential_10/conv1d_9/BiasAdd/ReadVariableOp:^sequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp.^sequential_10/dense_24/BiasAdd/ReadVariableOp-^sequential_10/dense_24/MatMul/ReadVariableOp.^sequential_10/dense_25/BiasAdd/ReadVariableOp-^sequential_10/dense_25/MatMul/ReadVariableOp.^sequential_10/dense_26/BiasAdd/ReadVariableOp-^sequential_10/dense_26/MatMul/ReadVariableOp:^sequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp9^sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOp;^sequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^sequential_10/lstm_16/while:^sequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp9^sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOp;^sequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^sequential_10/lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2^
-sequential_10/conv1d_9/BiasAdd/ReadVariableOp-sequential_10/conv1d_9/BiasAdd/ReadVariableOp2v
9sequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp9sequential_10/conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp2^
-sequential_10/dense_24/BiasAdd/ReadVariableOp-sequential_10/dense_24/BiasAdd/ReadVariableOp2\
,sequential_10/dense_24/MatMul/ReadVariableOp,sequential_10/dense_24/MatMul/ReadVariableOp2^
-sequential_10/dense_25/BiasAdd/ReadVariableOp-sequential_10/dense_25/BiasAdd/ReadVariableOp2\
,sequential_10/dense_25/MatMul/ReadVariableOp,sequential_10/dense_25/MatMul/ReadVariableOp2^
-sequential_10/dense_26/BiasAdd/ReadVariableOp-sequential_10/dense_26/BiasAdd/ReadVariableOp2\
,sequential_10/dense_26/MatMul/ReadVariableOp,sequential_10/dense_26/MatMul/ReadVariableOp2v
9sequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp9sequential_10/lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2t
8sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOp8sequential_10/lstm_16/lstm_cell_16/MatMul/ReadVariableOp2x
:sequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:sequential_10/lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2:
sequential_10/lstm_16/whilesequential_10/lstm_16/while2v
9sequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp9sequential_10/lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2t
8sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOp8sequential_10/lstm_17/lstm_cell_17/MatMul/ReadVariableOp2x
:sequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:sequential_10/lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp2:
sequential_10/lstm_17/whilesequential_10/lstm_17/while:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
ѓ
ј
.__inference_lstm_cell_17_layer_call_fn_5892533

inputs
states_0
states_1
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
ў
љ
.__inference_lstm_cell_16_layer_call_fn_5892452

inputs
states_0
states_1
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identity

identity_1

identity_2ЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888874p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/1
Ш	
і
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ў
/__inference_sequential_10_layer_call_fn_5889776
conv1d_9_input
unknown:
	unknown_0:	
	unknown_1:
 
	unknown_2:
Ш 
	unknown_3:	 
	unknown_4:
Ш
	unknown_5:	d
	unknown_6:	
	unknown_7:d
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv1d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_5889745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
еK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5891926
inputs_0?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891841*
condR
while_cond_5891840*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
"
_user_specified_name
inputs/0
Д
К
)__inference_lstm_16_layer_call_fn_5891143
inputs_0
unknown:
 
	unknown_0:
Ш 
	unknown_1:	 
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5889002}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0


ш
lstm_16_while_cond_5890538,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3.
*lstm_16_while_less_lstm_16_strided_slice_1E
Alstm_16_while_lstm_16_while_cond_5890538___redundant_placeholder0E
Alstm_16_while_lstm_16_while_cond_5890538___redundant_placeholder1E
Alstm_16_while_lstm_16_while_cond_5890538___redundant_placeholder2E
Alstm_16_while_lstm_16_while_cond_5890538___redundant_placeholder3
lstm_16_while_identity

lstm_16/while/LessLesslstm_16_while_placeholder*lstm_16_while_less_lstm_16_strided_slice_1*
T0*
_output_shapes
: [
lstm_16/while/IdentityIdentitylstm_16/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_16_while_identitylstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:

Й
)__inference_lstm_17_layer_call_fn_5891748
inputs_0
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889163o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
"
_user_specified_name
inputs/0
О
Ш
while_cond_5891366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891366___redundant_placeholder05
1while_while_cond_5891366___redundant_placeholder15
1while_while_cond_5891366___redundant_placeholder25
1while_while_cond_5891366___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
Ї8
е
while_body_5891653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
Щe
­
 __inference__traced_save_5892784
file_prefix.
*savev2_conv1d_9_kernel_read_readvariableop,
(savev2_conv1d_9_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop:
6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableopD
@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop8
4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop:
6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableopD
@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop8
4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_9_kernel_m_read_readvariableop3
/savev2_adam_conv1d_9_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop5
1savev2_adam_conv1d_9_kernel_v_read_readvariableop3
/savev2_adam_conv1d_9_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableopA
=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableopA
=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: у
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*
valueBџ2B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHб
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B н
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_9_kernel_read_readvariableop(savev2_conv1d_9_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop6savev2_lstm_16_lstm_cell_16_kernel_read_readvariableop@savev2_lstm_16_lstm_cell_16_recurrent_kernel_read_readvariableop4savev2_lstm_16_lstm_cell_16_bias_read_readvariableop6savev2_lstm_17_lstm_cell_17_kernel_read_readvariableop@savev2_lstm_17_lstm_cell_17_recurrent_kernel_read_readvariableop4savev2_lstm_17_lstm_cell_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_9_kernel_m_read_readvariableop/savev2_adam_conv1d_9_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_m_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_m_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_m_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_m_read_readvariableop1savev2_adam_conv1d_9_kernel_v_read_readvariableop/savev2_adam_conv1d_9_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop=savev2_adam_lstm_16_lstm_cell_16_kernel_v_read_readvariableopGsavev2_adam_lstm_16_lstm_cell_16_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_16_lstm_cell_16_bias_v_read_readvariableop=savev2_adam_lstm_17_lstm_cell_17_kernel_v_read_readvariableopGsavev2_adam_lstm_17_lstm_cell_17_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_17_lstm_cell_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*А
_input_shapes
: :::d::::::
 :
Ш : :
Ш:	d:: : : : : : : :::d::::::
 :
Ш : :
Ш:	d::::d::::::
 :
Ш : :
Ш:	d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
::!

_output_shapes	
::$ 

_output_shapes

:d: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&	"
 
_output_shapes
:
 :&
"
 
_output_shapes
:
Ш :!

_output_shapes	
: :&"
 
_output_shapes
:
Ш:%!

_output_shapes
:	d:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
::!

_output_shapes	
::$ 

_output_shapes

:d: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
 :&"
 
_output_shapes
:
Ш :! 

_output_shapes	
: :&!"
 
_output_shapes
:
Ш:%"!

_output_shapes
:	d:!#

_output_shapes	
::)$%
#
_output_shapes
::!%

_output_shapes	
::$& 

_output_shapes

:d: '

_output_shapes
::$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::&,"
 
_output_shapes
:
 :&-"
 
_output_shapes
:
Ш :!.

_output_shapes	
: :&/"
 
_output_shapes
:
Ш:%0!

_output_shapes
:	d:!1

_output_shapes	
::2

_output_shapes
: 
а
є
%__inference_signature_wrapper_5890402
conv1d_9_input
unknown:
	unknown_0:	
	unknown_1:
 
	unknown_2:
Ш 
	unknown_3:	 
	unknown_4:
Ш
	unknown_5:	d
	unknown_6:	
	unknown_7:d
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallconv1d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_5888661o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
О
Ш
while_cond_5891509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891509___redundant_placeholder05
1while_while_cond_5891509___redundant_placeholder15
1while_while_cond_5891509___redundant_placeholder25
1while_while_cond_5891509___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
Ї8
е
while_body_5891367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
џ
З
)__inference_lstm_17_layer_call_fn_5891770

inputs
unknown:
Ш
	unknown_0:	d
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
№

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888874

inputs

states
states_12
matmul_readvariableop_resource:
 4
 matmul_1_readvariableop_resource:
Ш .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџШV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_namestates
Ч

*__inference_dense_26_layer_call_fn_5892408

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
$
ь
while_body_5889286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_17_5889310_0:
Ш/
while_lstm_cell_17_5889312_0:	d+
while_lstm_cell_17_5889314_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_17_5889310:
Ш-
while_lstm_cell_17_5889312:	d)
while_lstm_cell_17_5889314:	Ђ*while/lstm_cell_17/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0К
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_5889310_0while_lstm_cell_17_5889312_0while_lstm_cell_17_5889314_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889226r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_17/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_17_5889310while_lstm_cell_17_5889310_0":
while_lstm_cell_17_5889312while_lstm_cell_17_5889312_0":
while_lstm_cell_17_5889314while_lstm_cell_17_5889314_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
О
Ш
while_cond_5888932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5888932___redundant_placeholder05
1while_while_cond_5888932___redundant_placeholder15
1while_while_cond_5888932___redundant_placeholder25
1while_while_cond_5888932___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
щ!
Ђ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5889745

inputs'
conv1d_9_5889389:
conv1d_9_5889391:	#
lstm_16_5889537:
 #
lstm_16_5889539:
Ш 
lstm_16_5889541:	 #
lstm_17_5889689:
Ш"
lstm_17_5889691:	d
lstm_17_5889693:	"
dense_24_5889707:d
dense_24_5889709:"
dense_25_5889723:
dense_25_5889725:"
dense_26_5889739:
dense_26_5889741:
identityЂ conv1d_9/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCallћ
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_9_5889389conv1d_9_5889391*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388­
lstm_16/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0lstm_16_5889537lstm_16_5889539lstm_16_5889541*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5889536Ї
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_5889689lstm_17_5889691lstm_17_5889693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889688
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_24_5889707dense_24_5889709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_5889723dense_25_5889725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_5889739dense_26_5889741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv1d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї8
е
while_body_5890045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
ьЫ
Ц
J__inference_sequential_10_layer_call_and_return_conditional_losses_5891096

inputsK
4conv1d_9_conv1d_expanddims_1_readvariableop_resource:7
(conv1d_9_biasadd_readvariableop_resource:	G
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:
 I
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:
Ш C
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	 G
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:
ШH
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:	dC
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:	9
'dense_24_matmul_readvariableop_resource:d6
(dense_24_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:9
'dense_26_matmul_readvariableop_resource:6
(dense_26_biasadd_readvariableop_resource:
identityЂconv1d_9/BiasAdd/ReadVariableOpЂ+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpЂdense_24/BiasAdd/ReadVariableOpЂdense_24/MatMul/ReadVariableOpЂdense_25/BiasAdd/ReadVariableOpЂdense_25/MatMul/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂ+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ*lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂlstm_16/whileЂ+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpЂ*lstm_17/lstm_cell_17/MatMul/ReadVariableOpЂ,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpЂlstm_17/whilei
conv1d_9/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
conv1d_9/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_9/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџЅ
+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0b
 conv1d_9/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : М
conv1d_9/Conv1D/ExpandDims_1
ExpandDims3conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:Щ
conv1d_9/Conv1DConv2D#conv1d_9/Conv1D/ExpandDims:output:0%conv1d_9/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

conv1d_9/Conv1D/SqueezeSqueezeconv1d_9/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv1d_9/BiasAddBiasAdd conv1d_9/Conv1D/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџg
conv1d_9/ReluReluconv1d_9/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџX
lstm_16/ShapeShapeconv1d_9/Relu:activations:0*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ш
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ[
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ш
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШk
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_16/transpose	Transposeconv1d_9/Relu:activations:0lstm_16/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0Ў
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Є
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ј
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Є
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0­
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ f
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :љ
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШv
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШv
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   а
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_5890853*&
condR
lstm_16_while_cond_5890852*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   л
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0p
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Џ
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШc
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШT
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:g
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ј
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask 
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0Ў
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   f
$lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0-lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_17_while_body_5890993*&
condR
lstm_17_while_cond_5890992*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ю
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsp
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_24/MatMulMatMul lstm_17/strided_slice_3:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_25/MatMulMatMuldense_24/BiasAdd:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_26/MatMulMatMuldense_25/BiasAdd:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2Z
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp*lstm_17/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­9
г
while_body_5892276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
Ї8
е
while_body_5891510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
т

I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892582

inputs
states_0
states_12
matmul_readvariableop_resource:
Ш3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1

ў
/__inference_sequential_10_layer_call_fn_5890285
conv1d_9_input
unknown:
	unknown_0:	
	unknown_1:
 
	unknown_2:
Ш 
	unknown_3:	 
	unknown_4:
Ш
	unknown_5:	d
	unknown_6:	
	unknown_7:d
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv1d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
Ї8
е
while_body_5889452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_16_matmul_readvariableop_resource_0:
 I
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_16_matmul_readvariableop_resource:
 G
3while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш A
2while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ)while/lstm_cell_16/BiasAdd/ReadVariableOpЂ(while/lstm_cell_16/MatMul/ReadVariableOpЂ*while/lstm_cell_16/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0К
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ђ
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Ё
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0Ї
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѓ
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split{
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШu
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ}
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШr
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШХ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШz
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШа

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_5891985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891985___redundant_placeholder05
1while_while_cond_5891985___redundant_placeholder15
1while_while_cond_5891985___redundant_placeholder25
1while_while_cond_5891985___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
К
Ш
while_cond_5889285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5889285___redundant_placeholder05
1while_while_cond_5889285___redundant_placeholder15
1while_while_cond_5889285___redundant_placeholder25
1while_while_cond_5889285___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
"
Њ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890323
conv1d_9_input'
conv1d_9_5890288:
conv1d_9_5890290:	#
lstm_16_5890293:
 #
lstm_16_5890295:
Ш 
lstm_16_5890297:	 #
lstm_17_5890300:
Ш"
lstm_17_5890302:	d
lstm_17_5890304:	"
dense_24_5890307:d
dense_24_5890309:"
dense_25_5890312:
dense_25_5890314:"
dense_26_5890317:
dense_26_5890319:
identityЂ conv1d_9/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCall
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCallconv1d_9_inputconv1d_9_5890288conv1d_9_5890290*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388­
lstm_16/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0lstm_16_5890293lstm_16_5890295lstm_16_5890297*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5889536Ї
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_5890300lstm_17_5890302lstm_17_5890304*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889688
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_24_5890307dense_24_5890309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_5890312dense_25_5890314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_5890317dense_26_5890319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv1d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:[ W
+
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameconv1d_9_input
О
Ш
while_cond_5891652
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891652___redundant_placeholder05
1while_while_cond_5891652___redundant_placeholder15
1while_while_cond_5891652___redundant_placeholder25
1while_while_cond_5891652___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
к

I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5889226

inputs

states
states_12
matmul_readvariableop_resource:
Ш3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_namestates
т

I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892614

inputs
states_0
states_12
matmul_readvariableop_resource:
Ш3
 matmul_1_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџdU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџdN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџd_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџdK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџШ:џџџџџџџџџd:џџџџџџџџџd: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџd
"
_user_specified_name
states/1
К
Ш
while_cond_5891840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891840___redundant_placeholder05
1while_while_cond_5891840___redundant_placeholder15
1while_while_cond_5891840___redundant_placeholder25
1while_while_cond_5891840___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
ВK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5889964

inputs?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5889879*
condR
while_cond_5889878*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
О
Ш
while_cond_5891223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5891223___redundant_placeholder05
1while_while_cond_5891223___redundant_placeholder15
1while_while_cond_5891223___redundant_placeholder25
1while_while_cond_5891223___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:
НS

(sequential_10_lstm_17_while_body_5888558H
Dsequential_10_lstm_17_while_sequential_10_lstm_17_while_loop_counterN
Jsequential_10_lstm_17_while_sequential_10_lstm_17_while_maximum_iterations+
'sequential_10_lstm_17_while_placeholder-
)sequential_10_lstm_17_while_placeholder_1-
)sequential_10_lstm_17_while_placeholder_2-
)sequential_10_lstm_17_while_placeholder_3G
Csequential_10_lstm_17_while_sequential_10_lstm_17_strided_slice_1_0
sequential_10_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_17_tensorarrayunstack_tensorlistfromtensor_0]
Isequential_10_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0:
Ш^
Ksequential_10_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dY
Jsequential_10_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0:	(
$sequential_10_lstm_17_while_identity*
&sequential_10_lstm_17_while_identity_1*
&sequential_10_lstm_17_while_identity_2*
&sequential_10_lstm_17_while_identity_3*
&sequential_10_lstm_17_while_identity_4*
&sequential_10_lstm_17_while_identity_5E
Asequential_10_lstm_17_while_sequential_10_lstm_17_strided_slice_1
}sequential_10_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_17_tensorarrayunstack_tensorlistfromtensor[
Gsequential_10_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource:
Ш\
Isequential_10_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource:	dW
Hsequential_10_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ?sequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpЂ>sequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpЂ@sequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp
Msequential_10/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   
?sequential_10/lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_17_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_17_while_placeholderVsequential_10/lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0Ъ
>sequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpIsequential_10_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0ќ
/sequential_10/lstm_17/while/lstm_cell_17/MatMulMatMulFsequential_10/lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЭ
@sequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpKsequential_10_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0у
1sequential_10/lstm_17/while/lstm_cell_17/MatMul_1MatMul)sequential_10_lstm_17_while_placeholder_2Hsequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџр
,sequential_10/lstm_17/while/lstm_cell_17/addAddV29sequential_10/lstm_17/while/lstm_cell_17/MatMul:product:0;sequential_10/lstm_17/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
?sequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpJsequential_10_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0щ
0sequential_10/lstm_17/while/lstm_cell_17/BiasAddBiasAdd0sequential_10/lstm_17/while/lstm_cell_17/add:z:0Gsequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
8sequential_10/lstm_17/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_10/lstm_17/while/lstm_cell_17/splitSplitAsequential_10/lstm_17/while/lstm_cell_17/split/split_dim:output:09sequential_10/lstm_17/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitІ
0sequential_10/lstm_17/while/lstm_cell_17/SigmoidSigmoid7sequential_10/lstm_17/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_10/lstm_17/while/lstm_cell_17/Sigmoid_1Sigmoid7sequential_10/lstm_17/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdШ
,sequential_10/lstm_17/while/lstm_cell_17/mulMul6sequential_10/lstm_17/while/lstm_cell_17/Sigmoid_1:y:0)sequential_10_lstm_17_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџd 
-sequential_10/lstm_17/while/lstm_cell_17/ReluRelu7sequential_10/lstm_17/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџdк
.sequential_10/lstm_17/while/lstm_cell_17/mul_1Mul4sequential_10/lstm_17/while/lstm_cell_17/Sigmoid:y:0;sequential_10/lstm_17/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdЯ
.sequential_10/lstm_17/while/lstm_cell_17/add_1AddV20sequential_10/lstm_17/while/lstm_cell_17/mul:z:02sequential_10/lstm_17/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЈ
2sequential_10/lstm_17/while/lstm_cell_17/Sigmoid_2Sigmoid7sequential_10/lstm_17/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџd
/sequential_10/lstm_17/while/lstm_cell_17/Relu_1Relu2sequential_10/lstm_17/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdо
.sequential_10/lstm_17/while/lstm_cell_17/mul_2Mul6sequential_10/lstm_17/while/lstm_cell_17/Sigmoid_2:y:0=sequential_10/lstm_17/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
Fsequential_10/lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Х
@sequential_10/lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_17_while_placeholder_1Osequential_10/lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_10/lstm_17/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_10/lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_10/lstm_17/while/addAddV2'sequential_10_lstm_17_while_placeholder*sequential_10/lstm_17/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_10/lstm_17/while/add_1AddV2Dsequential_10_lstm_17_while_sequential_10_lstm_17_while_loop_counter,sequential_10/lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_10/lstm_17/while/IdentityIdentity%sequential_10/lstm_17/while/add_1:z:0!^sequential_10/lstm_17/while/NoOp*
T0*
_output_shapes
: Т
&sequential_10/lstm_17/while/Identity_1IdentityJsequential_10_lstm_17_while_sequential_10_lstm_17_while_maximum_iterations!^sequential_10/lstm_17/while/NoOp*
T0*
_output_shapes
: 
&sequential_10/lstm_17/while/Identity_2Identity#sequential_10/lstm_17/while/add:z:0!^sequential_10/lstm_17/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_10/lstm_17/while/Identity_3IdentityPsequential_10/lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_17/while/NoOp*
T0*
_output_shapes
: Л
&sequential_10/lstm_17/while/Identity_4Identity2sequential_10/lstm_17/while/lstm_cell_17/mul_2:z:0!^sequential_10/lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЛ
&sequential_10/lstm_17/while/Identity_5Identity2sequential_10/lstm_17/while/lstm_cell_17/add_1:z:0!^sequential_10/lstm_17/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdЈ
 sequential_10/lstm_17/while/NoOpNoOp@^sequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?^sequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOpA^sequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_17_while_identity-sequential_10/lstm_17/while/Identity:output:0"Y
&sequential_10_lstm_17_while_identity_1/sequential_10/lstm_17/while/Identity_1:output:0"Y
&sequential_10_lstm_17_while_identity_2/sequential_10/lstm_17/while/Identity_2:output:0"Y
&sequential_10_lstm_17_while_identity_3/sequential_10/lstm_17/while/Identity_3:output:0"Y
&sequential_10_lstm_17_while_identity_4/sequential_10/lstm_17/while/Identity_4:output:0"Y
&sequential_10_lstm_17_while_identity_5/sequential_10/lstm_17/while/Identity_5:output:0"
Hsequential_10_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resourceJsequential_10_lstm_17_while_lstm_cell_17_biasadd_readvariableop_resource_0"
Isequential_10_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resourceKsequential_10_lstm_17_while_lstm_cell_17_matmul_1_readvariableop_resource_0"
Gsequential_10_lstm_17_while_lstm_cell_17_matmul_readvariableop_resourceIsequential_10_lstm_17_while_lstm_cell_17_matmul_readvariableop_resource_0"
Asequential_10_lstm_17_while_sequential_10_lstm_17_strided_slice_1Csequential_10_lstm_17_while_sequential_10_lstm_17_strided_slice_1_0"
}sequential_10_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_17_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_17_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2
?sequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp?sequential_10/lstm_17/while/lstm_cell_17/BiasAdd/ReadVariableOp2
>sequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp>sequential_10/lstm_17/while/lstm_cell_17/MatMul/ReadVariableOp2
@sequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp@sequential_10/lstm_17/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
О
Ш
while_cond_5890044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5890044___redundant_placeholder05
1while_while_cond_5890044___redundant_placeholder15
1while_while_cond_5890044___redundant_placeholder25
1while_while_cond_5890044___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџШ:џџџџџџџџџШ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
:


ш
lstm_17_while_cond_5890992,
(lstm_17_while_lstm_17_while_loop_counter2
.lstm_17_while_lstm_17_while_maximum_iterations
lstm_17_while_placeholder
lstm_17_while_placeholder_1
lstm_17_while_placeholder_2
lstm_17_while_placeholder_3.
*lstm_17_while_less_lstm_17_strided_slice_1E
Alstm_17_while_lstm_17_while_cond_5890992___redundant_placeholder0E
Alstm_17_while_lstm_17_while_cond_5890992___redundant_placeholder1E
Alstm_17_while_lstm_17_while_cond_5890992___redundant_placeholder2E
Alstm_17_while_lstm_17_while_cond_5890992___redundant_placeholder3
lstm_17_while_identity

lstm_17/while/LessLesslstm_17_while_placeholder*lstm_17_while_less_lstm_17_strided_slice_1*
T0*
_output_shapes
: [
lstm_17/while/IdentityIdentitylstm_17/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_17_while_identitylstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
еK

D__inference_lstm_17_layer_call_and_return_conditional_losses_5892071
inputs_0?
+lstm_cell_17_matmul_readvariableop_resource:
Ш@
-lstm_cell_17_matmul_1_readvariableop_resource:	d;
,lstm_cell_17_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_17/BiasAdd/ReadVariableOpЂ"lstm_cell_17/MatMul/ReadVariableOpЂ$lstm_cell_17/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџdw
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdh
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd{
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdp
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџde
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5891986*
condR
while_cond_5891985*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdР
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџШ: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџШ
"
_user_specified_name
inputs/0
­9
г
while_body_5889879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_17_matmul_readvariableop_resource_0:
ШH
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	dC
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_17_matmul_readvariableop_resource:
ШF
3while_lstm_cell_17_matmul_1_readvariableop_resource:	dA
2while_lstm_cell_17_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_17/BiasAdd/ReadVariableOpЂ(while/lstm_cell_17/MatMul/ReadVariableOpЂ*while/lstm_cell_17/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџШ*
element_dtype0
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0* 
_output_shapes
:
Ш*
dtype0К
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ё
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџdt
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd|
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdq
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdy
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџdа

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_5889878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5889878___redundant_placeholder05
1while_while_cond_5889878___redundant_placeholder15
1while_while_cond_5889878___redundant_placeholder25
1while_while_cond_5889878___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџd:џџџџџџџџџd: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџd:-)
'
_output_shapes
:џџџџџџџџџd:

_output_shapes
: :

_output_shapes
:
щ!
Ђ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890221

inputs'
conv1d_9_5890186:
conv1d_9_5890188:	#
lstm_16_5890191:
 #
lstm_16_5890193:
Ш 
lstm_16_5890195:	 #
lstm_17_5890198:
Ш"
lstm_17_5890200:	d
lstm_17_5890202:	"
dense_24_5890205:d
dense_24_5890207:"
dense_25_5890210:
dense_25_5890212:"
dense_26_5890215:
dense_26_5890217:
identityЂ conv1d_9/StatefulPartitionedCallЂ dense_24/StatefulPartitionedCallЂ dense_25/StatefulPartitionedCallЂ dense_26/StatefulPartitionedCallЂlstm_16/StatefulPartitionedCallЂlstm_17/StatefulPartitionedCallћ
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_9_5890186conv1d_9_5890188*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5889388­
lstm_16/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0lstm_16_5890191lstm_16_5890193lstm_16_5890195*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_16_layer_call_and_return_conditional_losses_5890129Ї
lstm_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0lstm_17_5890198lstm_17_5890200lstm_17_5890202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lstm_17_layer_call_and_return_conditional_losses_5889964
 dense_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_17/StatefulPartitionedCall:output:0dense_24_5890205dense_24_5890207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_5889706
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_5890210dense_25_5890212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_25_layer_call_and_return_conditional_losses_5889722
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_5890215dense_26_5890217*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_5889738x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^conv1d_9/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall ^lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall2B
lstm_17/StatefulPartitionedCalllstm_17/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
#
ю
while_body_5888933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_16_5888957_0:
 0
while_lstm_cell_16_5888959_0:
Ш +
while_lstm_cell_16_5888961_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_16_5888957:
 .
while_lstm_cell_16_5888959:
Ш )
while_lstm_cell_16_5888961:	 Ђ*while/lstm_cell_16/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Н
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_5888957_0while_lstm_cell_16_5888959_0while_lstm_cell_16_5888961_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5888874м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШy

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_16_5888957while_lstm_cell_16_5888957_0":
while_lstm_cell_16_5888959while_lstm_cell_16_5888959_0":
while_lstm_cell_16_5888961while_lstm_cell_16_5888961_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
Ш	
і
E__inference_dense_26_layer_call_and_return_conditional_losses_5892418

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ьЫ
Ц
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890782

inputsK
4conv1d_9_conv1d_expanddims_1_readvariableop_resource:7
(conv1d_9_biasadd_readvariableop_resource:	G
3lstm_16_lstm_cell_16_matmul_readvariableop_resource:
 I
5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource:
Ш C
4lstm_16_lstm_cell_16_biasadd_readvariableop_resource:	 G
3lstm_17_lstm_cell_17_matmul_readvariableop_resource:
ШH
5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource:	dC
4lstm_17_lstm_cell_17_biasadd_readvariableop_resource:	9
'dense_24_matmul_readvariableop_resource:d6
(dense_24_biasadd_readvariableop_resource:9
'dense_25_matmul_readvariableop_resource:6
(dense_25_biasadd_readvariableop_resource:9
'dense_26_matmul_readvariableop_resource:6
(dense_26_biasadd_readvariableop_resource:
identityЂconv1d_9/BiasAdd/ReadVariableOpЂ+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpЂdense_24/BiasAdd/ReadVariableOpЂdense_24/MatMul/ReadVariableOpЂdense_25/BiasAdd/ReadVariableOpЂdense_25/MatMul/ReadVariableOpЂdense_26/BiasAdd/ReadVariableOpЂdense_26/MatMul/ReadVariableOpЂ+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpЂ*lstm_16/lstm_cell_16/MatMul/ReadVariableOpЂ,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpЂlstm_16/whileЂ+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpЂ*lstm_17/lstm_cell_17/MatMul/ReadVariableOpЂ,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpЂlstm_17/whilei
conv1d_9/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
conv1d_9/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_9/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџЅ
+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0b
 conv1d_9/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : М
conv1d_9/Conv1D/ExpandDims_1
ExpandDims3conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:Щ
conv1d_9/Conv1DConv2D#conv1d_9/Conv1D/ExpandDims:output:0%conv1d_9/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

conv1d_9/Conv1D/SqueezeSqueezeconv1d_9/Conv1D:output:0*
T0*,
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv1d_9/BiasAddBiasAdd conv1d_9/Conv1D/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџg
conv1d_9/ReluReluconv1d_9/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџX
lstm_16/ShapeShapeconv1d_9/Relu:activations:0*
T0*
_output_shapes
:e
lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_16/strided_sliceStridedSlicelstm_16/Shape:output:0$lstm_16/strided_slice/stack:output:0&lstm_16/strided_slice/stack_1:output:0&lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ш
lstm_16/zeros/packedPacklstm_16/strided_slice:output:0lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zerosFilllstm_16/zeros/packed:output:0lstm_16/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ[
lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ш
lstm_16/zeros_1/packedPacklstm_16/strided_slice:output:0!lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_16/zeros_1Filllstm_16/zeros_1/packed:output:0lstm_16/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШk
lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_16/transpose	Transposeconv1d_9/Relu:activations:0lstm_16/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџT
lstm_16/Shape_1Shapelstm_16/transpose:y:0*
T0*
_output_shapes
:g
lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_1StridedSlicelstm_16/Shape_1:output:0&lstm_16/strided_slice_1/stack:output:0(lstm_16/strided_slice_1/stack_1:output:0(lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_16/TensorArrayV2TensorListReserve,lstm_16/TensorArrayV2/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_16/transpose:y:0Flstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_16/strided_slice_2StridedSlicelstm_16/transpose:y:0&lstm_16/strided_slice_2/stack:output:0(lstm_16/strided_slice_2/stack_1:output:0(lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
*lstm_16/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3lstm_16_lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0Ў
lstm_16/lstm_cell_16/MatMulMatMul lstm_16/strided_slice_2:output:02lstm_16/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Є
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0Ј
lstm_16/lstm_cell_16/MatMul_1MatMullstm_16/zeros:output:04lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Є
lstm_16/lstm_cell_16/addAddV2%lstm_16/lstm_cell_16/MatMul:product:0'lstm_16/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0­
lstm_16/lstm_cell_16/BiasAddBiasAddlstm_16/lstm_cell_16/add:z:03lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ f
$lstm_16/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :љ
lstm_16/lstm_cell_16/splitSplit-lstm_16/lstm_cell_16/split/split_dim:output:0%lstm_16/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split
lstm_16/lstm_cell_16/SigmoidSigmoid#lstm_16/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/Sigmoid_1Sigmoid#lstm_16/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/mulMul"lstm_16/lstm_cell_16/Sigmoid_1:y:0lstm_16/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШy
lstm_16/lstm_cell_16/ReluRelu#lstm_16/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/mul_1Mul lstm_16/lstm_cell_16/Sigmoid:y:0'lstm_16/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/add_1AddV2lstm_16/lstm_cell_16/mul:z:0lstm_16/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/lstm_cell_16/Sigmoid_2Sigmoid#lstm_16/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШv
lstm_16/lstm_cell_16/Relu_1Relulstm_16/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЃ
lstm_16/lstm_cell_16/mul_2Mul"lstm_16/lstm_cell_16/Sigmoid_2:y:0)lstm_16/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШv
%lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   а
lstm_16/TensorArrayV2_1TensorListReserve.lstm_16/TensorArrayV2_1/element_shape:output:0 lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ј
lstm_16/whileWhile#lstm_16/while/loop_counter:output:0)lstm_16/while/maximum_iterations:output:0lstm_16/time:output:0 lstm_16/TensorArrayV2_1:handle:0lstm_16/zeros:output:0lstm_16/zeros_1:output:0 lstm_16/strided_slice_1:output:0?lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_16_lstm_cell_16_matmul_readvariableop_resource5lstm_16_lstm_cell_16_matmul_1_readvariableop_resource4lstm_16_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_16_while_body_5890539*&
condR
lstm_16_while_cond_5890538*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
8lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   л
*lstm_16/TensorArrayV2Stack/TensorListStackTensorListStacklstm_16/while:output:3Alstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0p
lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
lstm_16/strided_slice_3StridedSlice3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_16/strided_slice_3/stack:output:0(lstm_16/strided_slice_3/stack_1:output:0(lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maskm
lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Џ
lstm_16/transpose_1	Transpose3lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_16/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШc
lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_17/ShapeShapelstm_16/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_17/strided_sliceStridedSlicelstm_17/Shape:output:0$lstm_17/strided_slice/stack:output:0&lstm_17/strided_slice/stack_1:output:0&lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_17/zeros/packedPacklstm_17/strided_slice:output:0lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zerosFilllstm_17/zeros/packed:output:0lstm_17/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdZ
lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d
lstm_17/zeros_1/packedPacklstm_17/strided_slice:output:0!lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_17/zeros_1Filllstm_17/zeros_1/packed:output:0lstm_17/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџdk
lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_17/transpose	Transposelstm_16/transpose_1:y:0lstm_17/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШT
lstm_17/Shape_1Shapelstm_17/transpose:y:0*
T0*
_output_shapes
:g
lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_1StridedSlicelstm_17/Shape_1:output:0&lstm_17/strided_slice_1/stack:output:0(lstm_17/strided_slice_1/stack_1:output:0(lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_17/TensorArrayV2TensorListReserve,lstm_17/TensorArrayV2/element_shape:output:0 lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   ј
/lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_17/transpose:y:0Flstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_17/strided_slice_2StridedSlicelstm_17/transpose:y:0&lstm_17/strided_slice_2/stack:output:0(lstm_17/strided_slice_2/stack_1:output:0(lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_mask 
*lstm_17/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3lstm_17_lstm_cell_17_matmul_readvariableop_resource* 
_output_shapes
:
Ш*
dtype0Ў
lstm_17/lstm_cell_17/MatMulMatMul lstm_17/strided_slice_2:output:02lstm_17/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	d*
dtype0Ј
lstm_17/lstm_cell_17/MatMul_1MatMullstm_17/zeros:output:04lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_17/lstm_cell_17/addAddV2%lstm_17/lstm_cell_17/MatMul:product:0'lstm_17/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_17/lstm_cell_17/BiasAddBiasAddlstm_17/lstm_cell_17/add:z:03lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_17/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_17/lstm_cell_17/splitSplit-lstm_17/lstm_cell_17/split/split_dim:output:0%lstm_17/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd:џџџџџџџџџd*
	num_split~
lstm_17/lstm_cell_17/SigmoidSigmoid#lstm_17/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/Sigmoid_1Sigmoid#lstm_17/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/mulMul"lstm_17/lstm_cell_17/Sigmoid_1:y:0lstm_17/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџdx
lstm_17/lstm_cell_17/ReluRelu#lstm_17/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/mul_1Mul lstm_17/lstm_cell_17/Sigmoid:y:0'lstm_17/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/add_1AddV2lstm_17/lstm_cell_17/mul:z:0lstm_17/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџd
lstm_17/lstm_cell_17/Sigmoid_2Sigmoid#lstm_17/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџdu
lstm_17/lstm_cell_17/Relu_1Relulstm_17/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
lstm_17/lstm_cell_17/mul_2Mul"lstm_17/lstm_cell_17/Sigmoid_2:y:0)lstm_17/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџdv
%lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   f
$lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_17/TensorArrayV2_1TensorListReserve.lstm_17/TensorArrayV2_1/element_shape:output:0-lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є
lstm_17/whileWhile#lstm_17/while/loop_counter:output:0)lstm_17/while/maximum_iterations:output:0lstm_17/time:output:0 lstm_17/TensorArrayV2_1:handle:0lstm_17/zeros:output:0lstm_17/zeros_1:output:0 lstm_17/strided_slice_1:output:0?lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_17_lstm_cell_17_matmul_readvariableop_resource5lstm_17_lstm_cell_17_matmul_1_readvariableop_resource4lstm_17_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_17_while_body_5890679*&
condR
lstm_17_while_cond_5890678*K
output_shapes:
8: : : : :џџџџџџџџџd:џџџџџџџџџd: : : : : *
parallel_iterations 
8lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџd   ю
*lstm_17/TensorArrayV2Stack/TensorListStackTensorListStacklstm_17/while:output:3Alstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџd*
element_dtype0*
num_elementsp
lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_17/strided_slice_3StridedSlice3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_17/strided_slice_3/stack:output:0(lstm_17/strided_slice_3/stack_1:output:0(lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџd*
shrink_axis_maskm
lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_17/transpose_1	Transpose3lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_17/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџdc
lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_24/MatMulMatMul lstm_17/strided_slice_3:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_25/MatMulMatMuldense_24/BiasAdd:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_26/MatMulMatMuldense_25/BiasAdd:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp,^lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+^lstm_16/lstm_cell_16/MatMul/ReadVariableOp-^lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp^lstm_16/while,^lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+^lstm_17/lstm_cell_17/MatMul/ReadVariableOp-^lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp^lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_9/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2Z
+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp+lstm_16/lstm_cell_16/BiasAdd/ReadVariableOp2X
*lstm_16/lstm_cell_16/MatMul/ReadVariableOp*lstm_16/lstm_cell_16/MatMul/ReadVariableOp2\
,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp,lstm_16/lstm_cell_16/MatMul_1/ReadVariableOp2
lstm_16/whilelstm_16/while2Z
+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp+lstm_17/lstm_cell_17/BiasAdd/ReadVariableOp2X
*lstm_17/lstm_cell_17/MatMul/ReadVariableOp*lstm_17/lstm_cell_17/MatMul/ReadVariableOp2\
,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp,lstm_17/lstm_cell_17/MatMul_1/ReadVariableOp2
lstm_17/whilelstm_17/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
рA
е

lstm_16_while_body_5890853,
(lstm_16_while_lstm_16_while_loop_counter2
.lstm_16_while_lstm_16_while_maximum_iterations
lstm_16_while_placeholder
lstm_16_while_placeholder_1
lstm_16_while_placeholder_2
lstm_16_while_placeholder_3+
'lstm_16_while_lstm_16_strided_slice_1_0g
clstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0O
;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0:
 Q
=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0:
Ш K
<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0:	 
lstm_16_while_identity
lstm_16_while_identity_1
lstm_16_while_identity_2
lstm_16_while_identity_3
lstm_16_while_identity_4
lstm_16_while_identity_5)
%lstm_16_while_lstm_16_strided_slice_1e
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorM
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource:
 O
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource:
Ш I
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource:	 Ђ1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpЂ0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpЂ2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp
?lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Я
1lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0lstm_16_while_placeholderHlstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0* 
_output_shapes
:
 *
dtype0в
!lstm_16/while/lstm_cell_16/MatMulMatMul8lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ В
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Ш *
dtype0Й
#lstm_16/while/lstm_cell_16/MatMul_1MatMullstm_16_while_placeholder_2:lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Ж
lstm_16/while/lstm_cell_16/addAddV2+lstm_16/while/lstm_cell_16/MatMul:product:0-lstm_16/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ Ћ
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype0П
"lstm_16/while/lstm_cell_16/BiasAddBiasAdd"lstm_16/while/lstm_cell_16/add:z:09lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ l
*lstm_16/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_16/while/lstm_cell_16/splitSplit3lstm_16/while/lstm_cell_16/split/split_dim:output:0+lstm_16/while/lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_split
"lstm_16/while/lstm_cell_16/SigmoidSigmoid)lstm_16/while/lstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_16/while/lstm_cell_16/Sigmoid_1Sigmoid)lstm_16/while/lstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/lstm_cell_16/mulMul(lstm_16/while/lstm_cell_16/Sigmoid_1:y:0lstm_16_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/lstm_cell_16/ReluRelu)lstm_16/while/lstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШБ
 lstm_16/while/lstm_cell_16/mul_1Mul&lstm_16/while/lstm_cell_16/Sigmoid:y:0-lstm_16/while/lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШІ
 lstm_16/while/lstm_cell_16/add_1AddV2"lstm_16/while/lstm_cell_16/mul:z:0$lstm_16/while/lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_16/while/lstm_cell_16/Sigmoid_2Sigmoid)lstm_16/while/lstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШ
!lstm_16/while/lstm_cell_16/Relu_1Relu$lstm_16/while/lstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШЕ
 lstm_16/while/lstm_cell_16/mul_2Mul(lstm_16/while/lstm_cell_16/Sigmoid_2:y:0/lstm_16/while/lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШх
2lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_16_while_placeholder_1lstm_16_while_placeholder$lstm_16/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_16/while/addAddV2lstm_16_while_placeholderlstm_16/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_16/while/add_1AddV2(lstm_16_while_lstm_16_while_loop_counterlstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_16/while/IdentityIdentitylstm_16/while/add_1:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_1Identity.lstm_16_while_lstm_16_while_maximum_iterations^lstm_16/while/NoOp*
T0*
_output_shapes
: q
lstm_16/while/Identity_2Identitylstm_16/while/add:z:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_3IdentityBlstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_16/while/NoOp*
T0*
_output_shapes
: 
lstm_16/while/Identity_4Identity$lstm_16/while/lstm_cell_16/mul_2:z:0^lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_16/while/Identity_5Identity$lstm_16/while/lstm_cell_16/add_1:z:0^lstm_16/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ№
lstm_16/while/NoOpNoOp2^lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1^lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp3^lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_16_while_identitylstm_16/while/Identity:output:0"=
lstm_16_while_identity_1!lstm_16/while/Identity_1:output:0"=
lstm_16_while_identity_2!lstm_16/while/Identity_2:output:0"=
lstm_16_while_identity_3!lstm_16/while/Identity_3:output:0"=
lstm_16_while_identity_4!lstm_16/while/Identity_4:output:0"=
lstm_16_while_identity_5!lstm_16/while/Identity_5:output:0"P
%lstm_16_while_lstm_16_strided_slice_1'lstm_16_while_lstm_16_strided_slice_1_0"z
:lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource<lstm_16_while_lstm_cell_16_biasadd_readvariableop_resource_0"|
;lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource=lstm_16_while_lstm_cell_16_matmul_1_readvariableop_resource_0"x
9lstm_16_while_lstm_cell_16_matmul_readvariableop_resource;lstm_16_while_lstm_cell_16_matmul_readvariableop_resource_0"Ш
alstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensorclstm_16_while_tensorarrayv2read_tensorlistgetitem_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : 2f
1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp1lstm_16/while/lstm_cell_16/BiasAdd/ReadVariableOp2d
0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp0lstm_16/while/lstm_cell_16/MatMul/ReadVariableOp2h
2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp2lstm_16/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџШ:.*
(
_output_shapes
:џџџџџџџџџШ:

_output_shapes
: :

_output_shapes
: 
ј

I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892484

inputs
states_0
states_12
matmul_readvariableop_resource:
 4
 matmul_1_readvariableop_resource:
Ш .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџШV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџШO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџШL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџШ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџ:џџџџџџџџџШ:џџџџџџџџџШ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/0:RN
(
_output_shapes
:џџџџџџџџџШ
"
_user_specified_name
states/1
ЧJ

D__inference_lstm_16_layer_call_and_return_conditional_losses_5890129

inputs?
+lstm_cell_16_matmul_readvariableop_resource:
 A
-lstm_cell_16_matmul_1_readvariableop_resource:
Ш ;
,lstm_cell_16_biasadd_readvariableop_resource:	 
identityЂ#lstm_cell_16/BiasAdd/ReadVariableOpЂ"lstm_cell_16/MatMul/ReadVariableOpЂ$lstm_cell_16/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Шw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџШc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource* 
_output_shapes
:
 *
dtype0
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource* 
_output_shapes
:
Ш *
dtype0
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ 
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ 
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype0
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ ^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ:џџџџџџџџџШ*
	num_splito
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџШx
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџШi
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШ|
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШq
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџШf
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџШn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_5890045*
condR
while_cond_5890044*M
output_shapes<
:: : : : :џџџџџџџџџШ:џџџџџџџџџШ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџШ   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџШ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџШ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШР
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџ: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Н
serving_defaultЉ
M
conv1d_9_input;
 serving_default_conv1d_9_input:0џџџџџџџџџ<
dense_260
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ёЇ
а
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
 cell
!
state_spec"
_tf_keras_rnn_layer
к
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_random_generator
)cell
*
state_spec"
_tf_keras_rnn_layer
Л
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
Л
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
Л
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer

0
1
C2
D3
E4
F5
G6
H7
18
29
910
:11
A12
B13"
trackable_list_wrapper

0
1
C2
D3
E4
F5
G6
H7
18
29
910
:11
A12
B13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32
/__inference_sequential_10_layer_call_fn_5889776
/__inference_sequential_10_layer_call_fn_5890435
/__inference_sequential_10_layer_call_fn_5890468
/__inference_sequential_10_layer_call_fn_5890285П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
н
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ђ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890782
J__inference_sequential_10_layer_call_and_return_conditional_losses_5891096
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890323
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890361П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
дBб
"__inference__wrapped_model_5888661conv1d_9_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_ratemЛmМ1mН2mО9mП:mРAmСBmТCmУDmФEmХFmЦGmЧHmШvЩvЪ1vЫ2vЬ9vЭ:vЮAvЯBvаCvбDvвEvгFvдGvеHvж"
	optimizer
,
[serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
atrace_02б
*__inference_conv1d_9_layer_call_fn_5891105Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zatrace_0

btrace_02ь
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5891121Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zbtrace_0
&:$2conv1d_9/kernel
:2conv1d_9/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

cstates
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
itrace_0
jtrace_1
ktrace_2
ltrace_32
)__inference_lstm_16_layer_call_fn_5891132
)__inference_lstm_16_layer_call_fn_5891143
)__inference_lstm_16_layer_call_fn_5891154
)__inference_lstm_16_layer_call_fn_5891165д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zitrace_0zjtrace_1zktrace_2zltrace_3
к
mtrace_0
ntrace_1
otrace_2
ptrace_32я
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891308
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891451
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891594
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891737д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zmtrace_0zntrace_1zotrace_2zptrace_3
"
_generic_user_object
ј
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator
x
state_size

Ckernel
Drecurrent_kernel
Ebias"
_tf_keras_layer
 "
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

ystates
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
є
trace_0
trace_1
trace_2
trace_32
)__inference_lstm_17_layer_call_fn_5891748
)__inference_lstm_17_layer_call_fn_5891759
)__inference_lstm_17_layer_call_fn_5891770
)__inference_lstm_17_layer_call_fn_5891781д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
т
trace_0
trace_1
trace_2
trace_32я
D__inference_lstm_17_layer_call_and_return_conditional_losses_5891926
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892071
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892216
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892361д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
"
_generic_user_object

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

Fkernel
Grecurrent_kernel
Hbias"
_tf_keras_layer
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
№
trace_02б
*__inference_dense_24_layer_call_fn_5892370Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ь
E__inference_dense_24_layer_call_and_return_conditional_losses_5892380Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
!:d2dense_24/kernel
:2dense_24/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
№
trace_02б
*__inference_dense_25_layer_call_fn_5892389Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ь
E__inference_dense_25_layer_call_and_return_conditional_losses_5892399Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
!:2dense_25/kernel
:2dense_25/bias
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
№
Ђtrace_02б
*__inference_dense_26_layer_call_fn_5892408Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЂtrace_0

Ѓtrace_02ь
E__inference_dense_26_layer_call_and_return_conditional_losses_5892418Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0
!:2dense_26/kernel
:2dense_26/bias
/:-
 2lstm_16/lstm_cell_16/kernel
9:7
Ш 2%lstm_16/lstm_cell_16/recurrent_kernel
(:& 2lstm_16/lstm_cell_16/bias
/:-
Ш2lstm_17/lstm_cell_17/kernel
8:6	d2%lstm_17/lstm_cell_17/recurrent_kernel
(:&2lstm_17/lstm_cell_17/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
(
Є0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_sequential_10_layer_call_fn_5889776conv1d_9_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_sequential_10_layer_call_fn_5890435inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_sequential_10_layer_call_fn_5890468inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
/__inference_sequential_10_layer_call_fn_5890285conv1d_9_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890782inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_10_layer_call_and_return_conditional_losses_5891096inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890323conv1d_9_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЃB 
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890361conv1d_9_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
гBа
%__inference_signature_wrapper_5890402conv1d_9_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
*__inference_conv1d_9_layer_call_fn_5891105inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5891121inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
)__inference_lstm_16_layer_call_fn_5891132inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_5891143inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_5891154inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_16_layer_call_fn_5891165inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891308inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891451inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891594inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891737inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
л
Њtrace_0
Ћtrace_12 
.__inference_lstm_cell_16_layer_call_fn_5892435
.__inference_lstm_cell_16_layer_call_fn_5892452Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЊtrace_0zЋtrace_1

Ќtrace_0
­trace_12ж
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892484
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892516Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0z­trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
)__inference_lstm_17_layer_call_fn_5891748inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_17_layer_call_fn_5891759inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_17_layer_call_fn_5891770inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
)__inference_lstm_17_layer_call_fn_5891781inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_17_layer_call_and_return_conditional_losses_5891926inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892071inputs/0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892216inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892361inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
F0
G1
H2"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ўnon_trainable_variables
Џlayers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
л
Гtrace_0
Дtrace_12 
.__inference_lstm_cell_17_layer_call_fn_5892533
.__inference_lstm_cell_17_layer_call_fn_5892550Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zГtrace_0zДtrace_1

Еtrace_0
Жtrace_12ж
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892582
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892614Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0zЖtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
*__inference_dense_24_layer_call_fn_5892370inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_dense_24_layer_call_and_return_conditional_losses_5892380inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
*__inference_dense_25_layer_call_fn_5892389inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_dense_25_layer_call_and_return_conditional_losses_5892399inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
*__inference_dense_26_layer_call_fn_5892408inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_dense_26_layer_call_and_return_conditional_losses_5892418inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
З	variables
И	keras_api

Йtotal

Кcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_lstm_cell_16_layer_call_fn_5892435inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_lstm_cell_16_layer_call_fn_5892452inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892484inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892516inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_lstm_cell_17_layer_call_fn_5892533inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_lstm_cell_17_layer_call_fn_5892550inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892582inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892614inputsstates/0states/1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Й0
К1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
:  (2total
:  (2count
+:)2Adam/conv1d_9/kernel/m
!:2Adam/conv1d_9/bias/m
&:$d2Adam/dense_24/kernel/m
 :2Adam/dense_24/bias/m
&:$2Adam/dense_25/kernel/m
 :2Adam/dense_25/bias/m
&:$2Adam/dense_26/kernel/m
 :2Adam/dense_26/bias/m
4:2
 2"Adam/lstm_16/lstm_cell_16/kernel/m
>:<
Ш 2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/m
-:+ 2 Adam/lstm_16/lstm_cell_16/bias/m
4:2
Ш2"Adam/lstm_17/lstm_cell_17/kernel/m
=:;	d2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/m
-:+2 Adam/lstm_17/lstm_cell_17/bias/m
+:)2Adam/conv1d_9/kernel/v
!:2Adam/conv1d_9/bias/v
&:$d2Adam/dense_24/kernel/v
 :2Adam/dense_24/bias/v
&:$2Adam/dense_25/kernel/v
 :2Adam/dense_25/bias/v
&:$2Adam/dense_26/kernel/v
 :2Adam/dense_26/bias/v
4:2
 2"Adam/lstm_16/lstm_cell_16/kernel/v
>:<
Ш 2,Adam/lstm_16/lstm_cell_16/recurrent_kernel/v
-:+ 2 Adam/lstm_16/lstm_cell_16/bias/v
4:2
Ш2"Adam/lstm_17/lstm_cell_17/kernel/v
=:;	d2,Adam/lstm_17/lstm_cell_17/recurrent_kernel/v
-:+2 Adam/lstm_17/lstm_cell_17/bias/vЉ
"__inference__wrapped_model_5888661CDEFGH129:AB;Ђ8
1Ђ.
,)
conv1d_9_inputџџџџџџџџџ
Њ "3Њ0
.
dense_26"
dense_26џџџџџџџџџЎ
E__inference_conv1d_9_layer_call_and_return_conditional_losses_5891121e3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "*Ђ'
 
0џџџџџџџџџ
 
*__inference_conv1d_9_layer_call_fn_5891105X3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
E__inference_dense_24_layer_call_and_return_conditional_losses_5892380\12/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_24_layer_call_fn_5892370O12/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "џџџџџџџџџЅ
E__inference_dense_25_layer_call_and_return_conditional_losses_5892399\9:/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_25_layer_call_fn_5892389O9:/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
E__inference_dense_26_layer_call_and_return_conditional_losses_5892418\AB/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dense_26_layer_call_fn_5892408OAB/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџе
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891308CDEPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџШ
 е
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891451CDEPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "3Ђ0
)&
0џџџџџџџџџџџџџџџџџџШ
 Л
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891594sCDE@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p 

 
Њ "*Ђ'
 
0џџџџџџџџџШ
 Л
D__inference_lstm_16_layer_call_and_return_conditional_losses_5891737sCDE@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p

 
Њ "*Ђ'
 
0џџџџџџџџџШ
 Ќ
)__inference_lstm_16_layer_call_fn_5891132CDEPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "&#џџџџџџџџџџџџџџџџџџШЌ
)__inference_lstm_16_layer_call_fn_5891143CDEPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "&#џџџџџџџџџџџџџџџџџџШ
)__inference_lstm_16_layer_call_fn_5891154fCDE@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџШ
)__inference_lstm_16_layer_call_fn_5891165fCDE@Ђ=
6Ђ3
%"
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџШЦ
D__inference_lstm_17_layer_call_and_return_conditional_losses_5891926~FGHPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџШ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 Ц
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892071~FGHPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџШ

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 Ж
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892216nFGH@Ђ=
6Ђ3
%"
inputsџџџџџџџџџШ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџd
 Ж
D__inference_lstm_17_layer_call_and_return_conditional_losses_5892361nFGH@Ђ=
6Ђ3
%"
inputsџџџџџџџџџШ

 
p

 
Њ "%Ђ"

0џџџџџџџџџd
 
)__inference_lstm_17_layer_call_fn_5891748qFGHPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџШ

 
p 

 
Њ "џџџџџџџџџd
)__inference_lstm_17_layer_call_fn_5891759qFGHPЂM
FЂC
52
0-
inputs/0џџџџџџџџџџџџџџџџџџШ

 
p

 
Њ "џџџџџџџџџd
)__inference_lstm_17_layer_call_fn_5891770aFGH@Ђ=
6Ђ3
%"
inputsџџџџџџџџџШ

 
p 

 
Њ "џџџџџџџџџd
)__inference_lstm_17_layer_call_fn_5891781aFGH@Ђ=
6Ђ3
%"
inputsџџџџџџџџџШ

 
p

 
Њ "џџџџџџџџџdв
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892484CDEЂ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџШ
# 
states/1џџџџџџџџџШ
p 
Њ "vЂs
lЂi

0/0џџџџџџџџџШ
GD
 
0/1/0џџџџџџџџџШ
 
0/1/1џџџџџџџџџШ
 в
I__inference_lstm_cell_16_layer_call_and_return_conditional_losses_5892516CDEЂ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџШ
# 
states/1џџџџџџџџџШ
p
Њ "vЂs
lЂi

0/0џџџџџџџџџШ
GD
 
0/1/0џџџџџџџџџШ
 
0/1/1џџџџџџџџџШ
 Ї
.__inference_lstm_cell_16_layer_call_fn_5892435єCDEЂ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџШ
# 
states/1џџџџџџџџџШ
p 
Њ "fЂc

0џџџџџџџџџШ
C@

1/0џџџџџџџџџШ

1/1џџџџџџџџџШЇ
.__inference_lstm_cell_16_layer_call_fn_5892452єCDEЂ
yЂv
!
inputsџџџџџџџџџ
MЂJ
# 
states/0џџџџџџџџџШ
# 
states/1џџџџџџџџџШ
p
Њ "fЂc

0џџџџџџџџџШ
C@

1/0џџџџџџџџџШ

1/1џџџџџџџџџШЬ
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892582ўFGHЂ~
wЂt
!
inputsџџџџџџџџџШ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ь
I__inference_lstm_cell_17_layer_call_and_return_conditional_losses_5892614ўFGHЂ~
wЂt
!
inputsџџџџџџџџџШ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "sЂp
iЂf

0/0џџџџџџџџџd
EB

0/1/0џџџџџџџџџd

0/1/1џџџџџџџџџd
 Ё
.__inference_lstm_cell_17_layer_call_fn_5892533юFGHЂ~
wЂt
!
inputsџџџџџџџџџШ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p 
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdЁ
.__inference_lstm_cell_17_layer_call_fn_5892550юFGHЂ~
wЂt
!
inputsџџџџџџџџџШ
KЂH
"
states/0џџџџџџџџџd
"
states/1џџџџџџџџџd
p
Њ "cЂ`

0џџџџџџџџџd
A>

1/0џџџџџџџџџd

1/1џџџџџџџџџdЪ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890323|CDEFGH129:ABCЂ@
9Ђ6
,)
conv1d_9_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ъ
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890361|CDEFGH129:ABCЂ@
9Ђ6
,)
conv1d_9_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Т
J__inference_sequential_10_layer_call_and_return_conditional_losses_5890782tCDEFGH129:AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Т
J__inference_sequential_10_layer_call_and_return_conditional_losses_5891096tCDEFGH129:AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ђ
/__inference_sequential_10_layer_call_fn_5889776oCDEFGH129:ABCЂ@
9Ђ6
,)
conv1d_9_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЂ
/__inference_sequential_10_layer_call_fn_5890285oCDEFGH129:ABCЂ@
9Ђ6
,)
conv1d_9_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
/__inference_sequential_10_layer_call_fn_5890435gCDEFGH129:AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
/__inference_sequential_10_layer_call_fn_5890468gCDEFGH129:AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџО
%__inference_signature_wrapper_5890402CDEFGH129:ABMЂJ
Ђ 
CЊ@
>
conv1d_9_input,)
conv1d_9_inputџџџџџџџџџ"3Њ0
.
dense_26"
dense_26џџџџџџџџџ