�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.12v2.16.0-rc0-18-g5bc9d26649c8��
�
sequential_1/dense_1/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_1/dense_1/bias/*
dtype0*
shape:**
shared_namesequential_1/dense_1/bias
�
-sequential_1/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_1/bias*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_1/bias*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential_1/dense_1/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_1/dense_1/kernel/*
dtype0*
shape
:@*,
shared_namesequential_1/dense_1/kernel
�
/sequential_1/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_1/kernel*
_output_shapes

:@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_1/kernel*
_class
loc:@Variable_1*
_output_shapes

:@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@*
dtype0
�
sequential_1/dense/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential_1/dense/bias/*
dtype0*
shape:@*(
shared_namesequential_1/dense/bias

+sequential_1/dense/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense/bias*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential_1/dense/bias*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
sequential_1/dense/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential_1/dense/kernel/*
dtype0*
shape:
��@**
shared_namesequential_1/dense/kernel
�
-sequential_1/dense/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense/kernel* 
_output_shapes
:
��@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_1/dense/kernel*
_class
loc:@Variable_3* 
_output_shapes
:
��@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:
��@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
k
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3* 
_output_shapes
:
��@*
dtype0
�
sequential_1/conv2d_1/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_1/conv2d_1/bias/*
dtype0*
shape:@*+
shared_namesequential_1/conv2d_1/bias
�
.sequential_1/conv2d_1/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_1/bias*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
�
sequential_1/conv2d_1/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_1/conv2d_1/kernel/*
dtype0*
shape: @*-
shared_namesequential_1/conv2d_1/kernel
�
0sequential_1/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_1/kernel*
_class
loc:@Variable_5*&
_output_shapes
: @*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape: @*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
q
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*&
_output_shapes
: @*
dtype0
�
sequential_1/conv2d/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential_1/conv2d/bias/*
dtype0*
shape: *)
shared_namesequential_1/conv2d/bias
�
,sequential_1/conv2d/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d/bias*
_output_shapes
: *
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d/bias*
_class
loc:@Variable_6*
_output_shapes
: *
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape: *
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
: *
dtype0
�
sequential_1/conv2d/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential_1/conv2d/kernel/*
dtype0*
shape: *+
shared_namesequential_1/conv2d/kernel
�
.sequential_1/conv2d/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d/kernel*&
_output_shapes
: *
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d/kernel*
_class
loc:@Variable_7*&
_output_shapes
: *
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape: *
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
q
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*&
_output_shapes
: *
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_8*
_output_shapes
: *
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape: *
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
a
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_9*
_output_shapes
: *
dtype0	
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0	*
shape: *
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0	
a
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential_1/conv2d/kernelsequential_1/conv2d/biassequential_1/conv2d_1/kernelsequential_1/conv2d_1/biassequential_1/dense/kernelsequential_1/dense/biassequential_1/dense_1/kernelsequential_1/dense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *:
f5R3
1__inference_signature_wrapper_serving_default_180

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_layers
	_build_shapes_dict


signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
C
0
1
2
3
 4
!5
"6
#7
$8*
* 

%serving_default* 
* 
* 
* 
* 
C
0
1
2
3
 4
!5
"6
#7
$8*
C
0
1
2
3
 4
!5
"6
#7
$8*
* 
* 

&trace_0* 

0
1*
* 
* 
SM
VARIABLE_VALUE
Variable_9/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUE
Variable_83optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
G
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids* 
�
+_functional
,_default_save_signature
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_layers
2_build_shapes_dict* 
�

3kernel
4bias
5_inbound_nodes
6_outbound_nodes
7_input_shape_arg
8_losses
9	_loss_ids
:_build_shapes_dict*
_
;_inbound_nodes
<_outbound_nodes
=_losses
>	_loss_ids
?_build_shapes_dict* 
w

@kernel
Abias
B_inbound_nodes
C_outbound_nodes
D_losses
E	_loss_ids
F_build_shapes_dict*
_
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_build_shapes_dict* 
_
L_inbound_nodes
M_outbound_nodes
N_losses
O	_loss_ids
P_build_shapes_dict* 
x
Q_kernel
Rbias
S_inbound_nodes
T_outbound_nodes
U_losses
V	_loss_ids
W_build_shapes_dict*
x
X_kernel
Ybias
Z_inbound_nodes
[_outbound_nodes
\_losses
]	_loss_ids
^_build_shapes_dict*
* 
* 
* 
* 
* 
* 
�
__tracked
`_inbound_nodes
a_outbound_nodes
b_losses
c_operations
d_layers
e_build_shapes_dict
foutput_names
g_default_save_signature* 

htrace_0* 
* 
* 
* 
* 

i0
j1
k2* 
* 
OI
VARIABLE_VALUE
Variable_7+_layers/2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_6)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
OI
VARIABLE_VALUE
Variable_5+_layers/4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_4)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
PJ
VARIABLE_VALUE
Variable_3,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_2)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
PJ
VARIABLE_VALUE
Variable_1,_layers/8/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable)_layers/8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

i0
j1
k2* 

i0
j1
k2* 
* 
* 

ltrace_0* 
* 
G
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids* 
_
q_inbound_nodes
r_outbound_nodes
s_losses
t	_loss_ids
u_build_shapes_dict* 
_
v_inbound_nodes
w_outbound_nodes
x_losses
y	_loss_ids
z_build_shapes_dict* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *%
f R
__inference__traced_save_371
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_restore_410��
�0
�
__inference__traced_restore_410
file_prefix%
assignvariableop_variable_9:	 '
assignvariableop_1_variable_8: 7
assignvariableop_2_variable_7: +
assignvariableop_3_variable_6: 7
assignvariableop_4_variable_5: @+
assignvariableop_5_variable_4:@1
assignvariableop_6_variable_3:
��@+
assignvariableop_7_variable_2:@/
assignvariableop_8_variable_1:@)
assignvariableop_9_variable:
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+_layers/2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEB+_layers/4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/8/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_9Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_8Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_7Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_6Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_5Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_4Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_3Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_2Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variableIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_11Identity_11:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:(
$
"
_user_specified_name
Variable:*	&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�F
�
__inference_serving_default_227

inputsU
;functional_9_1_conv2d_1_convolution_readvariableop_resource: E
7functional_9_1_conv2d_1_reshape_readvariableop_resource: W
=functional_9_1_conv2d_1_2_convolution_readvariableop_resource: @G
9functional_9_1_conv2d_1_2_reshape_readvariableop_resource:@G
3functional_9_1_dense_1_cast_readvariableop_resource:
��@@
2functional_9_1_dense_1_add_readvariableop_resource:@G
5functional_9_1_dense_1_2_cast_readvariableop_resource:@B
4functional_9_1_dense_1_2_add_readvariableop_resource:
identity��.functional_9_1/conv2d_1/Reshape/ReadVariableOp�2functional_9_1/conv2d_1/convolution/ReadVariableOp�0functional_9_1/conv2d_1_2/Reshape/ReadVariableOp�4functional_9_1/conv2d_1_2/convolution/ReadVariableOp�)functional_9_1/dense_1/Add/ReadVariableOp�*functional_9_1/dense_1/Cast/ReadVariableOp�+functional_9_1/dense_1_2/Add/ReadVariableOp�,functional_9_1/dense_1_2/Cast/ReadVariableOp�
2functional_9_1/sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
<functional_9_1/sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs;functional_9_1/sequential_1/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(s
.functional_9_1/sequential_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;u
0functional_9_1/sequential_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    p
-functional_9_1/sequential_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
+functional_9_1/sequential_1/rescaling_1/mulMulMfunctional_9_1/sequential_1/resizing_1/resize/ResizeBilinear:resized_images:07functional_9_1/sequential_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
+functional_9_1/sequential_1/rescaling_1/addAddV2/functional_9_1/sequential_1/rescaling_1/mul:z:09functional_9_1/sequential_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
2functional_9_1/conv2d_1/convolution/ReadVariableOpReadVariableOp;functional_9_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#functional_9_1/conv2d_1/convolutionConv2D/functional_9_1/sequential_1/rescaling_1/add:z:0:functional_9_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
.functional_9_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp7functional_9_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%functional_9_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
functional_9_1/conv2d_1/ReshapeReshape6functional_9_1/conv2d_1/Reshape/ReadVariableOp:value:0.functional_9_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
functional_9_1/conv2d_1/addAddV2,functional_9_1/conv2d_1/convolution:output:0(functional_9_1/conv2d_1/Reshape:output:0*
T0*1
_output_shapes
:����������� �
functional_9_1/conv2d_1/ReluRelufunctional_9_1/conv2d_1/add:z:0*
T0*1
_output_shapes
:����������� �
(functional_9_1/max_pooling2d_1/MaxPool2dMaxPool*functional_9_1/conv2d_1/Relu:activations:0*/
_output_shapes
:���������|| *
ksize
*
paddingVALID*
strides
�
4functional_9_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp=functional_9_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
%functional_9_1/conv2d_1_2/convolutionConv2D1functional_9_1/max_pooling2d_1/MaxPool2d:output:0<functional_9_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������zz@*
paddingVALID*
strides
�
0functional_9_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp9functional_9_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
'functional_9_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
!functional_9_1/conv2d_1_2/ReshapeReshape8functional_9_1/conv2d_1_2/Reshape/ReadVariableOp:value:00functional_9_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
functional_9_1/conv2d_1_2/addAddV2.functional_9_1/conv2d_1_2/convolution:output:0*functional_9_1/conv2d_1_2/Reshape:output:0*
T0*/
_output_shapes
:���������zz@�
functional_9_1/conv2d_1_2/ReluRelu!functional_9_1/conv2d_1_2/add:z:0*
T0*/
_output_shapes
:���������zz@�
*functional_9_1/max_pooling2d_1_2/MaxPool2dMaxPool,functional_9_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������==@*
ksize
*
paddingVALID*
strides
w
&functional_9_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@� �
 functional_9_1/flatten_1/ReshapeReshape3functional_9_1/max_pooling2d_1_2/MaxPool2d:output:0/functional_9_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
*functional_9_1/dense_1/Cast/ReadVariableOpReadVariableOp3functional_9_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
functional_9_1/dense_1/MatMulMatMul)functional_9_1/flatten_1/Reshape:output:02functional_9_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)functional_9_1/dense_1/Add/ReadVariableOpReadVariableOp2functional_9_1_dense_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_9_1/dense_1/AddAddV2'functional_9_1/dense_1/MatMul:product:01functional_9_1/dense_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
functional_9_1/dense_1/ReluRelufunctional_9_1/dense_1/Add:z:0*
T0*'
_output_shapes
:���������@�
,functional_9_1/dense_1_2/Cast/ReadVariableOpReadVariableOp5functional_9_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
functional_9_1/dense_1_2/MatMulMatMul)functional_9_1/dense_1/Relu:activations:04functional_9_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+functional_9_1/dense_1_2/Add/ReadVariableOpReadVariableOp4functional_9_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_9_1/dense_1_2/AddAddV2)functional_9_1/dense_1_2/MatMul:product:03functional_9_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
 functional_9_1/dense_1_2/SoftmaxSoftmax functional_9_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*functional_9_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^functional_9_1/conv2d_1/Reshape/ReadVariableOp3^functional_9_1/conv2d_1/convolution/ReadVariableOp1^functional_9_1/conv2d_1_2/Reshape/ReadVariableOp5^functional_9_1/conv2d_1_2/convolution/ReadVariableOp*^functional_9_1/dense_1/Add/ReadVariableOp+^functional_9_1/dense_1/Cast/ReadVariableOp,^functional_9_1/dense_1_2/Add/ReadVariableOp-^functional_9_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2`
.functional_9_1/conv2d_1/Reshape/ReadVariableOp.functional_9_1/conv2d_1/Reshape/ReadVariableOp2h
2functional_9_1/conv2d_1/convolution/ReadVariableOp2functional_9_1/conv2d_1/convolution/ReadVariableOp2d
0functional_9_1/conv2d_1_2/Reshape/ReadVariableOp0functional_9_1/conv2d_1_2/Reshape/ReadVariableOp2l
4functional_9_1/conv2d_1_2/convolution/ReadVariableOp4functional_9_1/conv2d_1_2/convolution/ReadVariableOp2V
)functional_9_1/dense_1/Add/ReadVariableOp)functional_9_1/dense_1/Add/ReadVariableOp2X
*functional_9_1/dense_1/Cast/ReadVariableOp*functional_9_1/dense_1/Cast/ReadVariableOp2Z
+functional_9_1/dense_1_2/Add/ReadVariableOp+functional_9_1/dense_1_2/Add/ReadVariableOp2\
,functional_9_1/dense_1_2/Cast/ReadVariableOp,functional_9_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
1__inference_signature_wrapper_serving_default_180

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
��@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference_serving_default_158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#

_user_specified_name176:#

_user_specified_name174:#

_user_specified_name172:#

_user_specified_name170:#

_user_specified_name168:#

_user_specified_name166:#

_user_specified_name164:#

_user_specified_name162:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�F
�
__inference_serving_default_158

inputsU
;sequential_1_1_conv2d_1_convolution_readvariableop_resource: E
7sequential_1_1_conv2d_1_reshape_readvariableop_resource: W
=sequential_1_1_conv2d_1_2_convolution_readvariableop_resource: @G
9sequential_1_1_conv2d_1_2_reshape_readvariableop_resource:@G
3sequential_1_1_dense_1_cast_readvariableop_resource:
��@@
2sequential_1_1_dense_1_add_readvariableop_resource:@G
5sequential_1_1_dense_1_2_cast_readvariableop_resource:@B
4sequential_1_1_dense_1_2_add_readvariableop_resource:
identity��.sequential_1_1/conv2d_1/Reshape/ReadVariableOp�2sequential_1_1/conv2d_1/convolution/ReadVariableOp�0sequential_1_1/conv2d_1_2/Reshape/ReadVariableOp�4sequential_1_1/conv2d_1_2/convolution/ReadVariableOp�)sequential_1_1/dense_1/Add/ReadVariableOp�*sequential_1_1/dense_1/Cast/ReadVariableOp�+sequential_1_1/dense_1_2/Add/ReadVariableOp�,sequential_1_1/dense_1_2/Cast/ReadVariableOp�
2sequential_1_1/sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
<sequential_1_1/sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs;sequential_1_1/sequential_1/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(s
.sequential_1_1/sequential_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;u
0sequential_1_1/sequential_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    p
-sequential_1_1/sequential_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
+sequential_1_1/sequential_1/rescaling_1/mulMulMsequential_1_1/sequential_1/resizing_1/resize/ResizeBilinear:resized_images:07sequential_1_1/sequential_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
+sequential_1_1/sequential_1/rescaling_1/addAddV2/sequential_1_1/sequential_1/rescaling_1/mul:z:09sequential_1_1/sequential_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
2sequential_1_1/conv2d_1/convolution/ReadVariableOpReadVariableOp;sequential_1_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
#sequential_1_1/conv2d_1/convolutionConv2D/sequential_1_1/sequential_1/rescaling_1/add:z:0:sequential_1_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
.sequential_1_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0~
%sequential_1_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1_1/conv2d_1/ReshapeReshape6sequential_1_1/conv2d_1/Reshape/ReadVariableOp:value:0.sequential_1_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
sequential_1_1/conv2d_1/addAddV2,sequential_1_1/conv2d_1/convolution:output:0(sequential_1_1/conv2d_1/Reshape:output:0*
T0*1
_output_shapes
:����������� �
sequential_1_1/conv2d_1/ReluRelusequential_1_1/conv2d_1/add:z:0*
T0*1
_output_shapes
:����������� �
(sequential_1_1/max_pooling2d_1/MaxPool2dMaxPool*sequential_1_1/conv2d_1/Relu:activations:0*/
_output_shapes
:���������|| *
ksize
*
paddingVALID*
strides
�
4sequential_1_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp=sequential_1_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
%sequential_1_1/conv2d_1_2/convolutionConv2D1sequential_1_1/max_pooling2d_1/MaxPool2d:output:0<sequential_1_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������zz@*
paddingVALID*
strides
�
0sequential_1_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp9sequential_1_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_1_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
!sequential_1_1/conv2d_1_2/ReshapeReshape8sequential_1_1/conv2d_1_2/Reshape/ReadVariableOp:value:00sequential_1_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
sequential_1_1/conv2d_1_2/addAddV2.sequential_1_1/conv2d_1_2/convolution:output:0*sequential_1_1/conv2d_1_2/Reshape:output:0*
T0*/
_output_shapes
:���������zz@�
sequential_1_1/conv2d_1_2/ReluRelu!sequential_1_1/conv2d_1_2/add:z:0*
T0*/
_output_shapes
:���������zz@�
*sequential_1_1/max_pooling2d_1_2/MaxPool2dMaxPool,sequential_1_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������==@*
ksize
*
paddingVALID*
strides
w
&sequential_1_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@� �
 sequential_1_1/flatten_1/ReshapeReshape3sequential_1_1/max_pooling2d_1_2/MaxPool2d:output:0/sequential_1_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
*sequential_1_1/dense_1/Cast/ReadVariableOpReadVariableOp3sequential_1_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
sequential_1_1/dense_1/MatMulMatMul)sequential_1_1/flatten_1/Reshape:output:02sequential_1_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)sequential_1_1/dense_1/Add/ReadVariableOpReadVariableOp2sequential_1_1_dense_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_1_1/dense_1/AddAddV2'sequential_1_1/dense_1/MatMul:product:01sequential_1_1/dense_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@u
sequential_1_1/dense_1/ReluRelusequential_1_1/dense_1/Add:z:0*
T0*'
_output_shapes
:���������@�
,sequential_1_1/dense_1_2/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_1_1/dense_1_2/MatMulMatMul)sequential_1_1/dense_1/Relu:activations:04sequential_1_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_1_1/dense_1_2/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_1_2_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1_1/dense_1_2/AddAddV2)sequential_1_1/dense_1_2/MatMul:product:03sequential_1_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
 sequential_1_1/dense_1_2/SoftmaxSoftmax sequential_1_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*sequential_1_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_1_1/conv2d_1/Reshape/ReadVariableOp3^sequential_1_1/conv2d_1/convolution/ReadVariableOp1^sequential_1_1/conv2d_1_2/Reshape/ReadVariableOp5^sequential_1_1/conv2d_1_2/convolution/ReadVariableOp*^sequential_1_1/dense_1/Add/ReadVariableOp+^sequential_1_1/dense_1/Cast/ReadVariableOp,^sequential_1_1/dense_1_2/Add/ReadVariableOp-^sequential_1_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2`
.sequential_1_1/conv2d_1/Reshape/ReadVariableOp.sequential_1_1/conv2d_1/Reshape/ReadVariableOp2h
2sequential_1_1/conv2d_1/convolution/ReadVariableOp2sequential_1_1/conv2d_1/convolution/ReadVariableOp2d
0sequential_1_1/conv2d_1_2/Reshape/ReadVariableOp0sequential_1_1/conv2d_1_2/Reshape/ReadVariableOp2l
4sequential_1_1/conv2d_1_2/convolution/ReadVariableOp4sequential_1_1/conv2d_1_2/convolution/ReadVariableOp2V
)sequential_1_1/dense_1/Add/ReadVariableOp)sequential_1_1/dense_1/Add/ReadVariableOp2X
*sequential_1_1/dense_1/Cast/ReadVariableOp*sequential_1_1/dense_1/Cast/ReadVariableOp2Z
+sequential_1_1/dense_1_2/Add/ReadVariableOp+sequential_1_1/dense_1_2/Add/ReadVariableOp2\
,sequential_1_1/dense_1_2/Cast/ReadVariableOp,sequential_1_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
;
__inference_serving_default_249

inputs
identityv
%functional_1_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
/functional_1_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs.functional_1_1/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(f
!functional_1_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;h
#functional_1_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    c
 functional_1_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
functional_1_1/rescaling_1/mulMul@functional_1_1/resizing_1/resize/ResizeBilinear:resized_images:0*functional_1_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
functional_1_1/rescaling_1/addAddV2"functional_1_1/rescaling_1/mul:z:0,functional_1_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������t
IdentityIdentity"functional_1_1/rescaling_1/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�R
�
__inference__traced_save_371
file_prefix+
!read_disablecopyonread_variable_9:	 -
#read_1_disablecopyonread_variable_8: =
#read_2_disablecopyonread_variable_7: 1
#read_3_disablecopyonread_variable_6: =
#read_4_disablecopyonread_variable_5: @1
#read_5_disablecopyonread_variable_4:@7
#read_6_disablecopyonread_variable_3:
��@1
#read_7_disablecopyonread_variable_2:@5
#read_8_disablecopyonread_variable_1:@/
!read_9_disablecopyonread_variable:
savev2_const
identity_21��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: d
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_9*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_9^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_8*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_8^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_7*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_7^Read_2/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_6*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_6^Read_3/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_5*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_5^Read_4/DisableCopyOnRead*&
_output_shapes
: @*
dtype0f

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_4*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_4^Read_5/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_3*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_3^Read_6/DisableCopyOnRead* 
_output_shapes
:
��@*
dtype0a
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��@g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_2*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_2^Read_7/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_1*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_1^Read_8/DisableCopyOnRead*
_output_shapes

:@*
dtype0_
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@f
Read_9/DisableCopyOnReadDisableCopyOnRead!read_9_disablecopyonread_variable*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp!read_9_disablecopyonread_variable^Read_9/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+_layers/2/kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEB+_layers/4/kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/8/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:(
$
"
_user_specified_name
Variable:*	&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

;
__inference_serving_default_238

inputs
identityt
#sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"�   �   �
-sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs,sequential_1/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(d
sequential_1/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;f
!sequential_1/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    a
sequential_1/rescaling_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
sequential_1/rescaling_1/mulMul>sequential_1/resizing_1/resize/ResizeBilinear:resized_images:0(sequential_1/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential_1/rescaling_1/addAddV2 sequential_1/rescaling_1/mul:z:0*sequential_1/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������r
IdentityIdentity sequential_1/rescaling_1/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�E
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_layers
	_build_shapes_dict


signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
__inference_serving_default_158�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
 4
!5
"6
#7
$8"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
%serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
 4
!5
"6
#7
$8"
trackable_list_wrapper
_
0
1
2
3
 4
!5
"6
#7
$8"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
&trace_02�
__inference_serving_default_227�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������z&trace_0
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adam/iteration
: 2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
__inference_serving_default_158inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
c
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids"
_generic_user_object
�
+_functional
,_default_save_signature
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_layers
2_build_shapes_dict"
_generic_user_object
�

3kernel
4bias
5_inbound_nodes
6_outbound_nodes
7_input_shape_arg
8_losses
9	_loss_ids
:_build_shapes_dict"
_generic_user_object
{
;_inbound_nodes
<_outbound_nodes
=_losses
>	_loss_ids
?_build_shapes_dict"
_generic_user_object
�

@kernel
Abias
B_inbound_nodes
C_outbound_nodes
D_losses
E	_loss_ids
F_build_shapes_dict"
_generic_user_object
{
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_build_shapes_dict"
_generic_user_object
{
L_inbound_nodes
M_outbound_nodes
N_losses
O	_loss_ids
P_build_shapes_dict"
_generic_user_object
�
Q_kernel
Rbias
S_inbound_nodes
T_outbound_nodes
U_losses
V	_loss_ids
W_build_shapes_dict"
_generic_user_object
�
X_kernel
Ybias
Z_inbound_nodes
[_outbound_nodes
\_losses
]	_loss_ids
^_build_shapes_dict"
_generic_user_object
�B�
1__inference_signature_wrapper_serving_default_180inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
__inference_serving_default_227inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
__tracked
`_inbound_nodes
a_outbound_nodes
b_losses
c_operations
d_layers
e_build_shapes_dict
foutput_names
g_default_save_signature"
_generic_user_object
�
htrace_02�
__inference_serving_default_238�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������zhtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
i0
j1
k2"
trackable_list_wrapper
 "
trackable_dict_wrapper
4:2 2sequential_1/conv2d/kernel
&:$ 2sequential_1/conv2d/bias
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
6:4 @2sequential_1/conv2d_1/kernel
(:&@2sequential_1/conv2d_1/bias
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
-:+
��@2sequential_1/dense/kernel
%:#@2sequential_1/dense/bias
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
-:+@2sequential_1/dense_1/kernel
':%2sequential_1/dense_1/bias
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
i0
j1
k2"
trackable_list_wrapper
5
i0
j1
k2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
ltrace_02�
__inference_serving_default_249�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������zltrace_0
�B�
__inference_serving_default_238inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
c
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids"
_generic_user_object
{
q_inbound_nodes
r_outbound_nodes
s_losses
t	_loss_ids
u_build_shapes_dict"
_generic_user_object
{
v_inbound_nodes
w_outbound_nodes
x_losses
y	_loss_ids
z_build_shapes_dict"
_generic_user_object
�B�
__inference_serving_default_249inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
__inference_serving_default_158h34@AQRXY9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
__inference_serving_default_227h34@AQRXY9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
__inference_serving_default_238h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
__inference_serving_default_249h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
1__inference_signature_wrapper_serving_default_180�34@AQRXYC�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������