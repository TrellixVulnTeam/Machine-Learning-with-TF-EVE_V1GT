��
�!�!
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
�
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
�
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
�
?sequential_2/features/attacker_ship_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*P
shared_nameA?sequential_2/features/attacker_ship_embedding/embedding_weights
�
Ssequential_2/features/attacker_ship_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp?sequential_2/features/attacker_ship_embedding/embedding_weights*
_output_shapes
:	�*
dtype0
�
=sequential_2/features/victim_ship_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*N
shared_name?=sequential_2/features/victim_ship_embedding/embedding_weights
�
Qsequential_2/features/victim_ship_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp=sequential_2/features/victim_ship_embedding/embedding_weights*
_output_shapes
:	�*
dtype0
�
sequential_2/middlerelu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name sequential_2/middlerelu/kernel
�
2sequential_2/middlerelu/kernel/Read/ReadVariableOpReadVariableOpsequential_2/middlerelu/kernel*
_output_shapes
:	�*
dtype0
�
sequential_2/middlerelu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namesequential_2/middlerelu/bias
�
0sequential_2/middlerelu/bias/Read/ReadVariableOpReadVariableOpsequential_2/middlerelu/bias*
_output_shapes	
:�*
dtype0
�
sequential_2/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namesequential_2/dense_2/kernel
�
/sequential_2/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_2/kernel*
_output_shapes
:	�*
dtype0
�
sequential_2/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namesequential_2/dense_2/bias
�
-sequential_2/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_2/bias*
_output_shapes
:*
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
n

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name556801*
value_dtype0	
p
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name556893*
value_dtype0	
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
�
FAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*W
shared_nameHFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/m
�
ZAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/m*
_output_shapes
:	�*
dtype0
�
DAdam/sequential_2/features/victim_ship_embedding/embedding_weights/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*U
shared_nameFDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m
�
XAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m/Read/ReadVariableOpReadVariableOpDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m*
_output_shapes
:	�*
dtype0
�
%Adam/sequential_2/middlerelu/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*6
shared_name'%Adam/sequential_2/middlerelu/kernel/m
�
9Adam/sequential_2/middlerelu/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/sequential_2/middlerelu/kernel/m*
_output_shapes
:	�*
dtype0
�
#Adam/sequential_2/middlerelu/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/sequential_2/middlerelu/bias/m
�
7Adam/sequential_2/middlerelu/bias/m/Read/ReadVariableOpReadVariableOp#Adam/sequential_2/middlerelu/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/sequential_2/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/sequential_2/dense_2/kernel/m
�
6Adam/sequential_2/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_2/kernel/m*
_output_shapes
:	�*
dtype0
�
 Adam/sequential_2/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_2/dense_2/bias/m
�
4Adam/sequential_2/dense_2/bias/m/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_2/bias/m*
_output_shapes
:*
dtype0
�
FAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*W
shared_nameHFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/v
�
ZAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/v*
_output_shapes
:	�*
dtype0
�
DAdam/sequential_2/features/victim_ship_embedding/embedding_weights/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*U
shared_nameFDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v
�
XAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v/Read/ReadVariableOpReadVariableOpDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v*
_output_shapes
:	�*
dtype0
�
%Adam/sequential_2/middlerelu/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*6
shared_name'%Adam/sequential_2/middlerelu/kernel/v
�
9Adam/sequential_2/middlerelu/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/sequential_2/middlerelu/kernel/v*
_output_shapes
:	�*
dtype0
�
#Adam/sequential_2/middlerelu/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/sequential_2/middlerelu/bias/v
�
7Adam/sequential_2/middlerelu/bias/v/Read/ReadVariableOpReadVariableOp#Adam/sequential_2/middlerelu/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/sequential_2/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/sequential_2/dense_2/kernel/v
�
6Adam/sequential_2/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/sequential_2/dense_2/kernel/v*
_output_shapes
:	�*
dtype0
�
 Adam/sequential_2/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/sequential_2/dense_2/bias/v
�
4Adam/sequential_2/dense_2/bias/v/Read/ReadVariableOpReadVariableOp Adam/sequential_2/dense_2/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
�
Const_2Const*
_output_shapes	
:�*
dtype0	*�
value�B�	�"�F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      ]      ^      _      `      a      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      h      j      l      n      p      x      z      |      ~      �      �      q                  /      �      �      �      �      �      ,      �      �      �      �      �      �      �            $      ~&      �&      �&      �&      +      +      y+      |+      ~+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      e,      k,      m,      o,      s,      u,      w,      {,      },      �,      �,      /-      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      /      
/      /      �1      �1      �1      �1      �3      c?      e?      g?      i?      l?      n?      p?      r?      �C      DD      FD      HD      �D      �D      �D      'E      )E      +E      -E      1E      3E      6E      8E      :E      >E      @E      DE      HE      JE      LE      �E      �E      �E      �E       F      F      F      F      F      
F      F      M      
M      M      M       M      �N      �N      �N      �N      �N      iR      |T      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      X      X      X      DY      �\      �\      g]      i]      k]      m]      o]      �_      p`      r`      t`      v`      x`      z`      |`      ~`      �c      �h      �h      �j      �j      �j      �j      �n      �o      �o      �o      �o      &p      �p      �p      �p      �p      @r      Rr      �r      �r      �r      �r      �r      �r      �r      �r       u      "u      $u      &u      zx      �}      �}      1~      3~      5~      7~      �      �      +�      H�      J�      L�      N�      P�      h�      j�      l�      n�      p�      ׀      ـ      ۀ      ݀      7�      9�      ;�      K�      �      ��      ��      ��      ��      u�      ��      ��      ��      �      �      W�      Y�      [�      ]�      _�      a�      c�      e�      g�      i�      k�      m�      o�      q�      s�      u�      w�      y�      {�      }�      �      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      �      �      �      M�      O�      Q�      S�      U�      W�      Y�      [�      F�      g�      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      Å      Ņ      ǅ      Ʌ      ˅      ͅ      υ      х      �      �      #�      %�      '�      )�      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      �      �      �      c�      Ë      ŋ      �      M�      N�      O�      P�      Q�      R�      S�      T�      h�      i�      j�      k�      �      �      �      �      
�
Const_3Const*
_output_shapes	
:�*
dtype0	*�
value�B�	�"�                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
�
Const_4Const*
_output_shapes	
:�*
dtype0	*�
value�B�	�"�F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      ]      ^      _      `      a      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      h      j      l      n      p      x      z      |      ~      �      �      q                  /      �      �      �      �      �      ,      �      �      �      �      �      �      �            $      ~&      �&      �&      �&      +      +      y+      |+      ~+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      �+      e,      k,      m,      o,      s,      u,      w,      {,      },      �,      �,      /-      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      �.      /      
/      /      �1      �1      �1      �1      �3      c?      e?      g?      i?      l?      n?      p?      r?      �C      DD      FD      HD      �D      �D      �D      'E      )E      +E      -E      1E      3E      6E      8E      :E      >E      @E      DE      HE      JE      LE      �E      �E      �E      �E       F      F      F      F      F      
F      F      M      
M      M      M       M      �N      �N      �N      �N      �N      iR      |T      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      �W      X      X      X      DY      �\      �\      g]      i]      k]      m]      o]      �_      p`      r`      t`      v`      x`      z`      |`      ~`      �c      �h      �h      �j      �j      �j      �j      �n      �o      �o      �o      �o      &p      �p      �p      �p      �p      @r      Rr      �r      �r      �r      �r      �r      �r      �r      �r       u      "u      $u      &u      zx      �}      �}      1~      3~      5~      7~      �      �      +�      H�      J�      L�      N�      P�      h�      j�      l�      n�      p�      ׀      ـ      ۀ      ݀      7�      9�      ;�      K�      �      ��      ��      ��      ��      u�      ��      ��      ��      �      �      W�      Y�      [�      ]�      _�      a�      c�      e�      g�      i�      k�      m�      o�      q�      s�      u�      w�      y�      {�      }�      �      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      �      �      �      M�      O�      Q�      S�      U�      W�      Y�      [�      F�      g�      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      Å      Ņ      ǅ      Ʌ      ˅      ͅ      υ      х      �      �      #�      %�      '�      )�      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      �      �      �      c�      Ë      ŋ      �      M�      N�      O�      P�      Q�      R�      S�      T�      h�      i�      j�      k�      �      �      �      �      
�
Const_5Const*
_output_shapes	
:�*
dtype0	*�
value�B�	�"�                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
�
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2		*
Tout
2*
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
GPU 2J 8� *$
fR
__inference_<lambda>_606189
�
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_4Const_5*
Tin
2		*
Tout
2*
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
GPU 2J 8� *$
fR
__inference_<lambda>_606197
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
�;
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�:
value�:B�: B�:
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
�
_feature_columns

_resources
-)attacker_ship_embedding/embedding_weights
+'victim_ship_embedding/embedding_weights
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratememfmgmh mi!mjvkvlvmvn vo!vp*
* 
.
0
1
2
3
 4
!5*
.
0
1
2
3
 4
!5*
* 
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

2serving_default* 
* 
&
3attacker_ship
4victim_ship* 
��
VARIABLE_VALUE?sequential_2/features/attacker_ship_embedding/embedding_weightsZlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=sequential_2/features/victim_ship_embedding/embedding_weightsXlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
nh
VARIABLE_VALUEsequential_2/middlerelu/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEsequential_2/middlerelu/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEsequential_2/dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEsequential_2/dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
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

0
1
2*
 
D0
E1
F2
G3*
* 
* 
* 

Hattacker_ship_lookup* 

Ivictim_ship_lookup* 
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
8
	Jtotal
	Kcount
L	variables
M	keras_api*
H
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api*
[
S
thresholds
Ttrue_positives
Ufalse_positives
V	variables
W	keras_api*
[
X
thresholds
Ytrue_positives
Zfalse_negatives
[	variables
\	keras_api*
R
]_initializer
^_create_resource
__initialize
`_destroy_resource* 
R
a_initializer
b_create_resource
c_initialize
d_destroy_resource* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

L	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

N0
O1*

Q	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

V	variables*
* 
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

[	variables*
* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/mvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/mtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Adam/sequential_2/middlerelu/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/sequential_2/middlerelu/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/sequential_2/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/sequential_2/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/vvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/vtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE%Adam/sequential_2/middlerelu/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/sequential_2/middlerelu/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/sequential_2/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE Adam/sequential_2/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
x
serving_default_attacker_corpPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
x
serving_default_attacker_shipPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
o
serving_default_hourPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
o
serving_default_timePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
v
serving_default_victim_corpPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
v
serving_default_victim_shipPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_attacker_corpserving_default_attacker_shipserving_default_hourserving_default_timeserving_default_victim_corpserving_default_victim_ship
hash_tableConst?sequential_2/features/attacker_ship_embedding/embedding_weightshash_table_1Const_1=sequential_2/features/victim_ship_embedding/embedding_weightssequential_2/middlerelu/kernelsequential_2/middlerelu/biassequential_2/dense_2/kernelsequential_2/dense_2/bias*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_605715
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameSsequential_2/features/attacker_ship_embedding/embedding_weights/Read/ReadVariableOpQsequential_2/features/victim_ship_embedding/embedding_weights/Read/ReadVariableOp2sequential_2/middlerelu/kernel/Read/ReadVariableOp0sequential_2/middlerelu/bias/Read/ReadVariableOp/sequential_2/dense_2/kernel/Read/ReadVariableOp-sequential_2/dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpZAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/m/Read/ReadVariableOpXAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m/Read/ReadVariableOp9Adam/sequential_2/middlerelu/kernel/m/Read/ReadVariableOp7Adam/sequential_2/middlerelu/bias/m/Read/ReadVariableOp6Adam/sequential_2/dense_2/kernel/m/Read/ReadVariableOp4Adam/sequential_2/dense_2/bias/m/Read/ReadVariableOpZAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/v/Read/ReadVariableOpXAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v/Read/ReadVariableOp9Adam/sequential_2/middlerelu/kernel/v/Read/ReadVariableOp7Adam/sequential_2/middlerelu/bias/v/Read/ReadVariableOp6Adam/sequential_2/dense_2/kernel/v/Read/ReadVariableOp4Adam/sequential_2/dense_2/bias/v/Read/ReadVariableOpConst_6*,
Tin%
#2!	*
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
__inference__traced_save_606328
�

StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename?sequential_2/features/attacker_ship_embedding/embedding_weights=sequential_2/features/victim_ship_embedding/embedding_weightssequential_2/middlerelu/kernelsequential_2/middlerelu/biassequential_2/dense_2/kernelsequential_2/dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1true_positivesfalse_positivestrue_positives_1false_negativesFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/mDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m%Adam/sequential_2/middlerelu/kernel/m#Adam/sequential_2/middlerelu/bias/m"Adam/sequential_2/dense_2/kernel/m Adam/sequential_2/dense_2/bias/mFAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/vDAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v%Adam/sequential_2/middlerelu/kernel/v#Adam/sequential_2/middlerelu/bias/v"Adam/sequential_2/dense_2/kernel/v Adam/sequential_2/dense_2/bias/v*+
Tin$
"2 *
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_606431��
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_606145

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_605279
inputs_attacker_corp	
inputs_attacker_ship	
inputs_hour	
inputs_time
inputs_victim_corp	
inputs_victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_attacker_corpinputs_attacker_shipinputs_hourinputs_timeinputs_victim_corpinputs_victim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_604796o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_corp:YU
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_ship:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/hour:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/time:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_corp:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_ship:

_output_shapes
: :


_output_shapes
: 
Ȅ
�
"__inference__traced_restore_606431
file_prefixc
Passignvariableop_sequential_2_features_attacker_ship_embedding_embedding_weights:	�c
Passignvariableop_1_sequential_2_features_victim_ship_embedding_embedding_weights:	�D
1assignvariableop_2_sequential_2_middlerelu_kernel:	�>
/assignvariableop_3_sequential_2_middlerelu_bias:	�A
.assignvariableop_4_sequential_2_dense_2_kernel:	�:
,assignvariableop_5_sequential_2_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: 0
"assignvariableop_15_true_positives:1
#assignvariableop_16_false_positives:2
$assignvariableop_17_true_positives_1:1
#assignvariableop_18_false_negatives:m
Zassignvariableop_19_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_m:	�k
Xassignvariableop_20_adam_sequential_2_features_victim_ship_embedding_embedding_weights_m:	�L
9assignvariableop_21_adam_sequential_2_middlerelu_kernel_m:	�F
7assignvariableop_22_adam_sequential_2_middlerelu_bias_m:	�I
6assignvariableop_23_adam_sequential_2_dense_2_kernel_m:	�B
4assignvariableop_24_adam_sequential_2_dense_2_bias_m:m
Zassignvariableop_25_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_v:	�k
Xassignvariableop_26_adam_sequential_2_features_victim_ship_embedding_embedding_weights_v:	�L
9assignvariableop_27_adam_sequential_2_middlerelu_kernel_v:	�F
7assignvariableop_28_adam_sequential_2_middlerelu_bias_v:	�I
6assignvariableop_29_adam_sequential_2_dense_2_kernel_v:	�B
4assignvariableop_30_adam_sequential_2_dense_2_bias_v:
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� BZlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpPassignvariableop_sequential_2_features_attacker_ship_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpPassignvariableop_1_sequential_2_features_victim_ship_embedding_embedding_weightsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp1assignvariableop_2_sequential_2_middlerelu_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp/assignvariableop_3_sequential_2_middlerelu_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_sequential_2_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_sequential_2_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_true_positivesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_false_positivesIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp$assignvariableop_17_true_positives_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp#assignvariableop_18_false_negativesIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpZassignvariableop_19_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpXassignvariableop_20_adam_sequential_2_features_victim_ship_embedding_embedding_weights_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp9assignvariableop_21_adam_sequential_2_middlerelu_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adam_sequential_2_middlerelu_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_sequential_2_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_sequential_2_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpZassignvariableop_25_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpXassignvariableop_26_adam_sequential_2_features_victim_ship_embedding_embedding_weights_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp9assignvariableop_27_adam_sequential_2_middlerelu_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp7assignvariableop_28_adam_sequential_2_middlerelu_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_sequential_2_dense_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_sequential_2_dense_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
AssignVariableOp_4AssignVariableOp_42(
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
�
�
-__inference_sequential_2_layer_call_fn_604819
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallattacker_corpattacker_shiphourtimevictim_corpvictim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_604796o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
��
�
D__inference_features_layer_call_and_return_conditional_losses_604747
features	

features_1	

features_2	

features_3

features_4	

features_5	F
Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleG
Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	B
/attacker_ship_embedding_readvariableop_resource:	�D
@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleE
Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value	@
-victim_ship_embedding_readvariableop_resource:	�
identity��5attacker_ship_embedding/None_Lookup/LookupTableFindV2�&attacker_ship_embedding/ReadVariableOp�3victim_ship_embedding/None_Lookup/LookupTableFindV2�$victim_ship_embedding/ReadVariableOpq
&attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"attacker_ship_embedding/ExpandDims
ExpandDims
features_1/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
6attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
4attacker_ship_embedding/to_sparse_input/ignore_valueCast?attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0attacker_ship_embedding/to_sparse_input/NotEqualNotEqual+attacker_ship_embedding/ExpandDims:output:08attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
/attacker_ship_embedding/to_sparse_input/indicesWhere4attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
.attacker_ship_embedding/to_sparse_input/valuesGatherNd+attacker_ship_embedding/ExpandDims:output:07attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
3attacker_ship_embedding/to_sparse_input/dense_shapeShape+attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
5attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle7attacker_ship_embedding/to_sparse_input/values:output:0Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&attacker_ship_embedding/ReadVariableOpReadVariableOp/attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Cattacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Battacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
=attacker_ship_embedding/attacker_ship_embedding_weights/SliceSlice<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
=attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
<attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdFattacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Hattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Eattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
@attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Qattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackEattacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape7attacker_ship_embedding/to_sparse_input/indices:index:0<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Nattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentity>attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Dattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqualWattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Oattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereHattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Eattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeEattacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2Vattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2Wattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentityTattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Qattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0Zattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
cattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
]attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicepattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0lattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Vattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniqueoattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
`attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2.attacker_ship_embedding/ReadVariableOp:value:0Zattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
iattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityiattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Oattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanrattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0\attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0fattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshapeuattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Pattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Kattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceFattacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0Tattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
=attacker_ship_embedding/attacker_ship_embedding_weights/stackPackHattacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
<attacker_ship_embedding/attacker_ship_embedding_weights/TileTileJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Battacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
7attacker_ship_embedding/attacker_ship_embedding_weightsSelectEattacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0Xattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1Cast<attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceBattacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1Shape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceHattacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Cattacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2Reshape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
attacker_ship_embedding/ShapeShapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:u
+attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%attacker_ship_embedding/strided_sliceStridedSlice&attacker_ship_embedding/Shape:output:04attacker_ship_embedding/strided_slice/stack:output:06attacker_ship_embedding/strided_slice/stack_1:output:06attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
%attacker_ship_embedding/Reshape/shapePack.attacker_ship_embedding/strided_slice:output:00attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
attacker_ship_embedding/ReshapeReshapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0.attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������o
$victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 victim_ship_embedding/ExpandDims
ExpandDims
features_5-victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:���������
4victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
2victim_ship_embedding/to_sparse_input/ignore_valueCast=victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
.victim_ship_embedding/to_sparse_input/NotEqualNotEqual)victim_ship_embedding/ExpandDims:output:06victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
-victim_ship_embedding/to_sparse_input/indicesWhere2victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
,victim_ship_embedding/to_sparse_input/valuesGatherNd)victim_ship_embedding/ExpandDims:output:05victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
1victim_ship_embedding/to_sparse_input/dense_shapeShape)victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
3victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle5victim_ship_embedding/to_sparse_input/values:output:0Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
$victim_ship_embedding/ReadVariableOpReadVariableOp-victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
?victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9victim_ship_embedding/victim_ship_embedding_weights/SliceSlice:victim_ship_embedding/to_sparse_input/dense_shape:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
9victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8victim_ship_embedding/victim_ship_embedding_weights/ProdProdBvictim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Dvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Avictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2:victim_ship_embedding/to_sparse_input/dense_shape:output:0Mvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
:victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackAvictim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Evictim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape5victim_ship_embedding/to_sparse_input/indices:index:0:victim_ship_embedding/to_sparse_input/dense_shape:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Jvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentity<victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
@victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqualSvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Kvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/WhereWhereDvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Avictim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeAvictim_ship_embedding/victim_ship_embedding_weights/Where:index:0Jvictim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2Rvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2Svictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityPvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Mvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
[victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Evictim_ship_embedding/victim_ship_embedding_weights/Identity:output:0Vvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
_victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Yvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicelvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0hvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Rvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquekvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
\victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2,victim_ship_embedding/ReadVariableOp:value:0Vvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
evictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityevictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Kvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeannvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0Xvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0bvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapeqvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Lvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/ShapeShapeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Gvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Avictim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceBvictim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Pvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
9victim_ship_embedding/victim_ship_embedding_weights/stackPackDvictim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
8victim_ship_embedding/victim_ship_embedding_weights/TileTileFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
>victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLikeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
3victim_ship_embedding/victim_ship_embedding_weightsSelectAvictim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0Tvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
:victim_ship_embedding/victim_ship_embedding_weights/Cast_1Cast:victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
@victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
;victim_ship_embedding/victim_ship_embedding_weights/Slice_1Slice>victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
;victim_ship_embedding/victim_ship_embedding_weights/Shape_1Shape<victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
@victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceDvictim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
?victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_2Reshape<victim_ship_embedding/victim_ship_embedding_weights:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
victim_ship_embedding/ShapeShapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:s
)victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#victim_ship_embedding/strided_sliceStridedSlice$victim_ship_embedding/Shape:output:02victim_ship_embedding/strided_slice/stack:output:04victim_ship_embedding/strided_slice/stack_1:output:04victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
#victim_ship_embedding/Reshape/shapePack,victim_ship_embedding/strided_slice:output:0.victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
victim_ship_embedding/ReshapeReshapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0,victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2(attacker_ship_embedding/Reshape:output:0&victim_ship_embedding/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^attacker_ship_embedding/None_Lookup/LookupTableFindV2'^attacker_ship_embedding/ReadVariableOp4^victim_ship_embedding/None_Lookup/LookupTableFindV2%^victim_ship_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 2n
5attacker_ship_embedding/None_Lookup/LookupTableFindV25attacker_ship_embedding/None_Lookup/LookupTableFindV22P
&attacker_ship_embedding/ReadVariableOp&attacker_ship_embedding/ReadVariableOp2j
3victim_ship_embedding/None_Lookup/LookupTableFindV23victim_ship_embedding/None_Lookup/LookupTableFindV22L
$victim_ship_embedding/ReadVariableOp$victim_ship_embedding/ReadVariableOp:M I
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:

_output_shapes
: :


_output_shapes
: 
�
�
-__inference_sequential_2_layer_call_fn_605309
inputs_attacker_corp	
inputs_attacker_ship	
inputs_hour	
inputs_time
inputs_victim_corp	
inputs_victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_attacker_corpinputs_attacker_shipinputs_hourinputs_timeinputs_victim_corpinputs_victim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_605126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_corp:YU
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_ship:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/hour:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/time:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_corp:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_605243
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	
features_605219
features_605221	"
features_605223:	�
features_605225
features_605227	"
features_605229:	�$
middlerelu_605232:	� 
middlerelu_605234:	�!
dense_2_605237:	�
dense_2_605239:
identity��dense_2/StatefulPartitionedCall� features/StatefulPartitionedCall�"middlerelu/StatefulPartitionedCall�
 features/StatefulPartitionedCallStatefulPartitionedCallattacker_corpattacker_shiphourtimevictim_corpvictim_shipfeatures_605219features_605221features_605223features_605225features_605227features_605229*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_605042�
"middlerelu/StatefulPartitionedCallStatefulPartitionedCall)features/StatefulPartitionedCall:output:0middlerelu_605232middlerelu_605234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772�
dense_2/StatefulPartitionedCallStatefulPartitionedCall+middlerelu/StatefulPartitionedCall:output:0dense_2_605237dense_2_605239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_604789w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_2/StatefulPartitionedCall!^features/StatefulPartitionedCall#^middlerelu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2D
 features/StatefulPartitionedCall features/StatefulPartitionedCall2H
"middlerelu/StatefulPartitionedCall"middlerelu/StatefulPartitionedCall:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_604789

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_605179
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallattacker_corpattacker_shiphourtimevictim_corpvictim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_605126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
�
;
__inference__creator_606168
identity��
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name556893*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
__inference_<lambda>_6061975
1table_init556892_lookuptableimportv2_table_handle-
)table_init556892_lookuptableimportv2_keys	/
+table_init556892_lookuptableimportv2_values	
identity��$table_init556892/LookupTableImportV2�
$table_init556892/LookupTableImportV2LookupTableImportV21table_init556892_lookuptableimportv2_table_handle)table_init556892_lookuptableimportv2_keys+table_init556892_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^table_init556892/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2L
$table_init556892/LookupTableImportV2$table_init556892/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�K
�
__inference__traced_save_606328
file_prefix^
Zsavev2_sequential_2_features_attacker_ship_embedding_embedding_weights_read_readvariableop\
Xsavev2_sequential_2_features_victim_ship_embedding_embedding_weights_read_readvariableop=
9savev2_sequential_2_middlerelu_kernel_read_readvariableop;
7savev2_sequential_2_middlerelu_bias_read_readvariableop:
6savev2_sequential_2_dense_2_kernel_read_readvariableop8
4savev2_sequential_2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableope
asavev2_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_m_read_readvariableopc
_savev2_adam_sequential_2_features_victim_ship_embedding_embedding_weights_m_read_readvariableopD
@savev2_adam_sequential_2_middlerelu_kernel_m_read_readvariableopB
>savev2_adam_sequential_2_middlerelu_bias_m_read_readvariableopA
=savev2_adam_sequential_2_dense_2_kernel_m_read_readvariableop?
;savev2_adam_sequential_2_dense_2_bias_m_read_readvariableope
asavev2_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_v_read_readvariableopc
_savev2_adam_sequential_2_features_victim_ship_embedding_embedding_weights_v_read_readvariableopD
@savev2_adam_sequential_2_middlerelu_kernel_v_read_readvariableopB
>savev2_adam_sequential_2_middlerelu_bias_v_read_readvariableopA
=savev2_adam_sequential_2_dense_2_kernel_v_read_readvariableop?
;savev2_adam_sequential_2_dense_2_bias_v_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� BZlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBvlayer_with_weights-0/attacker_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBtlayer_with_weights-0/victim_ship_embedding.Sembedding_weights/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Zsavev2_sequential_2_features_attacker_ship_embedding_embedding_weights_read_readvariableopXsavev2_sequential_2_features_victim_ship_embedding_embedding_weights_read_readvariableop9savev2_sequential_2_middlerelu_kernel_read_readvariableop7savev2_sequential_2_middlerelu_bias_read_readvariableop6savev2_sequential_2_dense_2_kernel_read_readvariableop4savev2_sequential_2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableopasavev2_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_m_read_readvariableop_savev2_adam_sequential_2_features_victim_ship_embedding_embedding_weights_m_read_readvariableop@savev2_adam_sequential_2_middlerelu_kernel_m_read_readvariableop>savev2_adam_sequential_2_middlerelu_bias_m_read_readvariableop=savev2_adam_sequential_2_dense_2_kernel_m_read_readvariableop;savev2_adam_sequential_2_dense_2_bias_m_read_readvariableopasavev2_adam_sequential_2_features_attacker_ship_embedding_embedding_weights_v_read_readvariableop_savev2_adam_sequential_2_features_victim_ship_embedding_embedding_weights_v_read_readvariableop@savev2_adam_sequential_2_middlerelu_kernel_v_read_readvariableop>savev2_adam_sequential_2_middlerelu_bias_v_read_readvariableop=savev2_adam_sequential_2_dense_2_kernel_v_read_readvariableop;savev2_adam_sequential_2_dense_2_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:	�:	�:�:	�:: : : : : : : : : :::::	�:	�:	�:�:	�::	�:	�:	�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
:: 

_output_shapes
: 
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_604796

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
features_604748
features_604750	"
features_604752:	�
features_604754
features_604756	"
features_604758:	�$
middlerelu_604773:	� 
middlerelu_604775:	�!
dense_2_604790:	�
dense_2_604792:
identity��dense_2/StatefulPartitionedCall� features/StatefulPartitionedCall�"middlerelu/StatefulPartitionedCall�
 features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5features_604748features_604750features_604752features_604754features_604756features_604758*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_604747�
"middlerelu/StatefulPartitionedCallStatefulPartitionedCall)features/StatefulPartitionedCall:output:0middlerelu_604773middlerelu_604775*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772�
dense_2/StatefulPartitionedCallStatefulPartitionedCall+middlerelu/StatefulPartitionedCall:output:0dense_2_604790dense_2_604792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_604789w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_2/StatefulPartitionedCall!^features/StatefulPartitionedCall#^middlerelu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2D
 features/StatefulPartitionedCall features/StatefulPartitionedCall2H
"middlerelu/StatefulPartitionedCall"middlerelu/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :


_output_shapes
: 
��
�
D__inference_features_layer_call_and_return_conditional_losses_605932
features_attacker_corp	
features_attacker_ship	
features_hour	
features_time
features_victim_corp	
features_victim_ship	F
Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleG
Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	B
/attacker_ship_embedding_readvariableop_resource:	�D
@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleE
Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value	@
-victim_ship_embedding_readvariableop_resource:	�
identity��5attacker_ship_embedding/None_Lookup/LookupTableFindV2�&attacker_ship_embedding/ReadVariableOp�3victim_ship_embedding/None_Lookup/LookupTableFindV2�$victim_ship_embedding/ReadVariableOpq
&attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"attacker_ship_embedding/ExpandDims
ExpandDimsfeatures_attacker_ship/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
6attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
4attacker_ship_embedding/to_sparse_input/ignore_valueCast?attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0attacker_ship_embedding/to_sparse_input/NotEqualNotEqual+attacker_ship_embedding/ExpandDims:output:08attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
/attacker_ship_embedding/to_sparse_input/indicesWhere4attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
.attacker_ship_embedding/to_sparse_input/valuesGatherNd+attacker_ship_embedding/ExpandDims:output:07attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
3attacker_ship_embedding/to_sparse_input/dense_shapeShape+attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
5attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle7attacker_ship_embedding/to_sparse_input/values:output:0Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&attacker_ship_embedding/ReadVariableOpReadVariableOp/attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Cattacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Battacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
=attacker_ship_embedding/attacker_ship_embedding_weights/SliceSlice<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
=attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
<attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdFattacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Hattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Eattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
@attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Qattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackEattacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape7attacker_ship_embedding/to_sparse_input/indices:index:0<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Nattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentity>attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Dattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqualWattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Oattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereHattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Eattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeEattacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2Vattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2Wattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentityTattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Qattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0Zattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
cattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
]attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicepattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0lattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Vattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniqueoattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
`attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2.attacker_ship_embedding/ReadVariableOp:value:0Zattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
iattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityiattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Oattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanrattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0\attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0fattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshapeuattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Pattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Kattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceFattacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0Tattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
=attacker_ship_embedding/attacker_ship_embedding_weights/stackPackHattacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
<attacker_ship_embedding/attacker_ship_embedding_weights/TileTileJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Battacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
7attacker_ship_embedding/attacker_ship_embedding_weightsSelectEattacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0Xattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1Cast<attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceBattacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1Shape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceHattacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Cattacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2Reshape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
attacker_ship_embedding/ShapeShapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:u
+attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%attacker_ship_embedding/strided_sliceStridedSlice&attacker_ship_embedding/Shape:output:04attacker_ship_embedding/strided_slice/stack:output:06attacker_ship_embedding/strided_slice/stack_1:output:06attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
%attacker_ship_embedding/Reshape/shapePack.attacker_ship_embedding/strided_slice:output:00attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
attacker_ship_embedding/ReshapeReshapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0.attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������o
$victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 victim_ship_embedding/ExpandDims
ExpandDimsfeatures_victim_ship-victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:���������
4victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
2victim_ship_embedding/to_sparse_input/ignore_valueCast=victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
.victim_ship_embedding/to_sparse_input/NotEqualNotEqual)victim_ship_embedding/ExpandDims:output:06victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
-victim_ship_embedding/to_sparse_input/indicesWhere2victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
,victim_ship_embedding/to_sparse_input/valuesGatherNd)victim_ship_embedding/ExpandDims:output:05victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
1victim_ship_embedding/to_sparse_input/dense_shapeShape)victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
3victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle5victim_ship_embedding/to_sparse_input/values:output:0Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
$victim_ship_embedding/ReadVariableOpReadVariableOp-victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
?victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9victim_ship_embedding/victim_ship_embedding_weights/SliceSlice:victim_ship_embedding/to_sparse_input/dense_shape:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
9victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8victim_ship_embedding/victim_ship_embedding_weights/ProdProdBvictim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Dvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Avictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2:victim_ship_embedding/to_sparse_input/dense_shape:output:0Mvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
:victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackAvictim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Evictim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape5victim_ship_embedding/to_sparse_input/indices:index:0:victim_ship_embedding/to_sparse_input/dense_shape:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Jvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentity<victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
@victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqualSvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Kvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/WhereWhereDvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Avictim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeAvictim_ship_embedding/victim_ship_embedding_weights/Where:index:0Jvictim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2Rvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2Svictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityPvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Mvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
[victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Evictim_ship_embedding/victim_ship_embedding_weights/Identity:output:0Vvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
_victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Yvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicelvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0hvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Rvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquekvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
\victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2,victim_ship_embedding/ReadVariableOp:value:0Vvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
evictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityevictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Kvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeannvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0Xvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0bvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapeqvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Lvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/ShapeShapeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Gvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Avictim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceBvictim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Pvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
9victim_ship_embedding/victim_ship_embedding_weights/stackPackDvictim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
8victim_ship_embedding/victim_ship_embedding_weights/TileTileFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
>victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLikeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
3victim_ship_embedding/victim_ship_embedding_weightsSelectAvictim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0Tvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
:victim_ship_embedding/victim_ship_embedding_weights/Cast_1Cast:victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
@victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
;victim_ship_embedding/victim_ship_embedding_weights/Slice_1Slice>victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
;victim_ship_embedding/victim_ship_embedding_weights/Shape_1Shape<victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
@victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceDvictim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
?victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_2Reshape<victim_ship_embedding/victim_ship_embedding_weights:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
victim_ship_embedding/ShapeShapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:s
)victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#victim_ship_embedding/strided_sliceStridedSlice$victim_ship_embedding/Shape:output:02victim_ship_embedding/strided_slice/stack:output:04victim_ship_embedding/strided_slice/stack_1:output:04victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
#victim_ship_embedding/Reshape/shapePack,victim_ship_embedding/strided_slice:output:0.victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
victim_ship_embedding/ReshapeReshapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0,victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2(attacker_ship_embedding/Reshape:output:0&victim_ship_embedding/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^attacker_ship_embedding/None_Lookup/LookupTableFindV2'^attacker_ship_embedding/ReadVariableOp4^victim_ship_embedding/None_Lookup/LookupTableFindV2%^victim_ship_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 2n
5attacker_ship_embedding/None_Lookup/LookupTableFindV25attacker_ship_embedding/None_Lookup/LookupTableFindV22P
&attacker_ship_embedding/ReadVariableOp&attacker_ship_embedding/ReadVariableOp2j
3victim_ship_embedding/None_Lookup/LookupTableFindV23victim_ship_embedding/None_Lookup/LookupTableFindV22L
$victim_ship_embedding/ReadVariableOp$victim_ship_embedding/ReadVariableOp:[ W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_corp:[W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_ship:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/hour:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/time:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_corp:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_ship:

_output_shapes
: :


_output_shapes
: 
��
�
!__inference__wrapped_model_604557
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	\
Xsequential_2_features_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle]
Ysequential_2_features_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	X
Esequential_2_features_attacker_ship_embedding_readvariableop_resource:	�Z
Vsequential_2_features_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle[
Wsequential_2_features_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value	V
Csequential_2_features_victim_ship_embedding_readvariableop_resource:	�I
6sequential_2_middlerelu_matmul_readvariableop_resource:	�F
7sequential_2_middlerelu_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�B
4sequential_2_dense_2_biasadd_readvariableop_resource:
identity��+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOp�Ksequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV2�<sequential_2/features/attacker_ship_embedding/ReadVariableOp�Isequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV2�:sequential_2/features/victim_ship_embedding/ReadVariableOp�.sequential_2/middlerelu/BiasAdd/ReadVariableOp�-sequential_2/middlerelu/MatMul/ReadVariableOp�
<sequential_2/features/attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
8sequential_2/features/attacker_ship_embedding/ExpandDims
ExpandDimsattacker_shipEsequential_2/features/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
Lsequential_2/features/attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
Jsequential_2/features/attacker_ship_embedding/to_sparse_input/ignore_valueCastUsequential_2/features/attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
Fsequential_2/features/attacker_ship_embedding/to_sparse_input/NotEqualNotEqualAsequential_2/features/attacker_ship_embedding/ExpandDims:output:0Nsequential_2/features/attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
Esequential_2/features/attacker_ship_embedding/to_sparse_input/indicesWhereJsequential_2/features/attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
Dsequential_2/features/attacker_ship_embedding/to_sparse_input/valuesGatherNdAsequential_2/features/attacker_ship_embedding/ExpandDims:output:0Msequential_2/features/attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Isequential_2/features/attacker_ship_embedding/to_sparse_input/dense_shapeShapeAsequential_2/features/attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
Ksequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Xsequential_2_features_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleMsequential_2/features/attacker_ship_embedding/to_sparse_input/values:output:0Ysequential_2_features_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
<sequential_2/features/attacker_ship_embedding/ReadVariableOpReadVariableOpEsequential_2_features_attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Ysequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Xsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SliceSliceRsequential_2/features/attacker_ship_embedding/to_sparse_input/dense_shape:output:0bsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0asequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Rsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/ProdProd\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Vsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2Rsequential_2/features/attacker_ship_embedding/to_sparse_input/dense_shape:output:0gsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Tsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPack[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0_sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshapeMsequential_2/features/attacker_ship_embedding/to_sparse_input/indices:index:0Rsequential_2/features/attacker_ship_embedding/to_sparse_input/dense_shape:output:0]sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentityTsequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Zsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqualmsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0esequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhere^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshape[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
]sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Xsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2lsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0fsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
]sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Xsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2msequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0fsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Vsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentityjsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
gsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsasequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0asequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0_sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0psequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
ysequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
{sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
{sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
lsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUnique�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
{sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*O
_classE
CAloc:@sequential_2/features/attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
vsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Dsequential_2/features/attacker_ship_embedding/ReadVariableOp:value:0psequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*O
_classE
CAloc:@sequential_2/features/attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitysequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
esequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMean�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0rsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0|sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
]sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Wsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshape�sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0fsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapensequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
asequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
csequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
csequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSlice\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0jsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0lsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0lsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Ssequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/stackPack^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Rsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/TileTile`sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Xsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikensequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Msequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weightsSelect[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0\sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0nsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Tsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1CastRsequential_2/features/attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Zsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceXsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0csequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1ShapeVsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
[sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Zsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Usequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2Slice^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0dsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0csequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Ysequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0^sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0bsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Wsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2ReshapeVsequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights:output:0]sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
3sequential_2/features/attacker_ship_embedding/ShapeShape`sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:�
Asequential_2/features/attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_2/features/attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential_2/features/attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential_2/features/attacker_ship_embedding/strided_sliceStridedSlice<sequential_2/features/attacker_ship_embedding/Shape:output:0Jsequential_2/features/attacker_ship_embedding/strided_slice/stack:output:0Lsequential_2/features/attacker_ship_embedding/strided_slice/stack_1:output:0Lsequential_2/features/attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=sequential_2/features/attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
;sequential_2/features/attacker_ship_embedding/Reshape/shapePackDsequential_2/features/attacker_ship_embedding/strided_slice:output:0Fsequential_2/features/attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
5sequential_2/features/attacker_ship_embedding/ReshapeReshape`sequential_2/features/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0Dsequential_2/features/attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
:sequential_2/features/victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
6sequential_2/features/victim_ship_embedding/ExpandDims
ExpandDimsvictim_shipCsequential_2/features/victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
Jsequential_2/features/victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
Hsequential_2/features/victim_ship_embedding/to_sparse_input/ignore_valueCastSsequential_2/features/victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
Dsequential_2/features/victim_ship_embedding/to_sparse_input/NotEqualNotEqual?sequential_2/features/victim_ship_embedding/ExpandDims:output:0Lsequential_2/features/victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
Csequential_2/features/victim_ship_embedding/to_sparse_input/indicesWhereHsequential_2/features/victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
Bsequential_2/features/victim_ship_embedding/to_sparse_input/valuesGatherNd?sequential_2/features/victim_ship_embedding/ExpandDims:output:0Ksequential_2/features/victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Gsequential_2/features/victim_ship_embedding/to_sparse_input/dense_shapeShape?sequential_2/features/victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
Isequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Vsequential_2_features_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleKsequential_2/features/victim_ship_embedding/to_sparse_input/values:output:0Wsequential_2_features_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
:sequential_2/features/victim_ship_embedding/ReadVariableOpReadVariableOpCsequential_2_features_victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Usequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Tsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SliceSlicePsequential_2/features/victim_ship_embedding/to_sparse_input/dense_shape:output:0^sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0]sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Nsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/ProdProdXsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Xsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Zsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Rsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2Psequential_2/features/victim_ship_embedding/to_sparse_input/dense_shape:output:0csequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Psequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackWsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Prod:output:0[sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshapeKsequential_2/features/victim_ship_embedding/to_sparse_input/indices:index:0Psequential_2/features/victim_ship_embedding/to_sparse_input/dense_shape:output:0Ysequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentityRsequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Xsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Vsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqualisequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0asequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/WhereWhereZsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeWsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Where:index:0`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Ysequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2hsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Zsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0bsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Ysequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2isequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Zsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0bsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Rsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityfsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
csequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows]sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0]sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0[sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Identity:output:0lsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
usequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0~sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
hsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUnique�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*M
_classC
A?loc:@sequential_2/features/victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
rsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Bsequential_2/features/victim_ship_embedding/ReadVariableOp:value:0lsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*M
_classC
A?loc:@sequential_2/features/victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
{sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity{sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
asequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMean�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0nsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0xsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Ysequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ssequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshape�sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0bsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/ShapeShapejsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
]sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
_sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
_sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceXsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Shape:output:0fsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0hsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0hsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Osequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/stackPackZsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Nsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/TileTile\sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Xsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Tsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLikejsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Isequential_2/features/victim_ship_embedding/victim_ship_embedding_weightsSelectWsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Xsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0jsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Psequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Cast_1CastPsequential_2/features/victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Vsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1SliceTsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0_sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Shape_1ShapeRsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Wsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Qsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceZsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0`sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0_sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Usequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Psequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Zsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Zsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0^sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ssequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2ReshapeRsequential_2/features/victim_ship_embedding/victim_ship_embedding_weights:output:0Ysequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
1sequential_2/features/victim_ship_embedding/ShapeShape\sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:�
?sequential_2/features/victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Asequential_2/features/victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential_2/features/victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_2/features/victim_ship_embedding/strided_sliceStridedSlice:sequential_2/features/victim_ship_embedding/Shape:output:0Hsequential_2/features/victim_ship_embedding/strided_slice/stack:output:0Jsequential_2/features/victim_ship_embedding/strided_slice/stack_1:output:0Jsequential_2/features/victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential_2/features/victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
9sequential_2/features/victim_ship_embedding/Reshape/shapePackBsequential_2/features/victim_ship_embedding/strided_slice:output:0Dsequential_2/features/victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
3sequential_2/features/victim_ship_embedding/ReshapeReshape\sequential_2/features/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0Bsequential_2/features/victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������l
!sequential_2/features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
sequential_2/features/concatConcatV2>sequential_2/features/attacker_ship_embedding/Reshape:output:0<sequential_2/features/victim_ship_embedding/Reshape:output:0*sequential_2/features/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
-sequential_2/middlerelu/MatMul/ReadVariableOpReadVariableOp6sequential_2_middlerelu_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_2/middlerelu/MatMulMatMul%sequential_2/features/concat:output:05sequential_2/middlerelu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sequential_2/middlerelu/BiasAdd/ReadVariableOpReadVariableOp7sequential_2_middlerelu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/middlerelu/BiasAddBiasAdd(sequential_2/middlerelu/MatMul:product:06sequential_2/middlerelu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
sequential_2/middlerelu/ReluRelu(sequential_2/middlerelu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_2/dense_2/MatMulMatMul*sequential_2/middlerelu/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_2/dense_2/SigmoidSigmoid%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������o
IdentityIdentity sequential_2/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOpL^sequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV2=^sequential_2/features/attacker_ship_embedding/ReadVariableOpJ^sequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV2;^sequential_2/features/victim_ship_embedding/ReadVariableOp/^sequential_2/middlerelu/BiasAdd/ReadVariableOp.^sequential_2/middlerelu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2�
Ksequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV2Ksequential_2/features/attacker_ship_embedding/None_Lookup/LookupTableFindV22|
<sequential_2/features/attacker_ship_embedding/ReadVariableOp<sequential_2/features/attacker_ship_embedding/ReadVariableOp2�
Isequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV2Isequential_2/features/victim_ship_embedding/None_Lookup/LookupTableFindV22x
:sequential_2/features/victim_ship_embedding/ReadVariableOp:sequential_2/features/victim_ship_embedding/ReadVariableOp2`
.sequential_2/middlerelu/BiasAdd/ReadVariableOp.sequential_2/middlerelu/BiasAdd/ReadVariableOp2^
-sequential_2/middlerelu/MatMul/ReadVariableOp-sequential_2/middlerelu/MatMul/ReadVariableOp:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_605211
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	
features_605187
features_605189	"
features_605191:	�
features_605193
features_605195	"
features_605197:	�$
middlerelu_605200:	� 
middlerelu_605202:	�!
dense_2_605205:	�
dense_2_605207:
identity��dense_2/StatefulPartitionedCall� features/StatefulPartitionedCall�"middlerelu/StatefulPartitionedCall�
 features/StatefulPartitionedCallStatefulPartitionedCallattacker_corpattacker_shiphourtimevictim_corpvictim_shipfeatures_605187features_605189features_605191features_605193features_605195features_605197*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_604747�
"middlerelu/StatefulPartitionedCallStatefulPartitionedCall)features/StatefulPartitionedCall:output:0middlerelu_605200middlerelu_605202*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772�
dense_2/StatefulPartitionedCallStatefulPartitionedCall+middlerelu/StatefulPartitionedCall:output:0dense_2_605205dense_2_605207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_604789w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_2/StatefulPartitionedCall!^features/StatefulPartitionedCall#^middlerelu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2D
 features/StatefulPartitionedCall features/StatefulPartitionedCall2H
"middlerelu/StatefulPartitionedCall"middlerelu/StatefulPartitionedCall:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
��
�

H__inference_sequential_2_layer_call_and_return_conditional_losses_605496
inputs_attacker_corp	
inputs_attacker_ship	
inputs_hour	
inputs_time
inputs_victim_corp	
inputs_victim_ship	O
Kfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleP
Lfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	K
8features_attacker_ship_embedding_readvariableop_resource:	�M
Ifeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleN
Jfeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value	I
6features_victim_ship_embedding_readvariableop_resource:	�<
)middlerelu_matmul_readvariableop_resource:	�9
*middlerelu_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2�/features/attacker_ship_embedding/ReadVariableOp�<features/victim_ship_embedding/None_Lookup/LookupTableFindV2�-features/victim_ship_embedding/ReadVariableOp�!middlerelu/BiasAdd/ReadVariableOp� middlerelu/MatMul/ReadVariableOpz
/features/attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
+features/attacker_ship_embedding/ExpandDims
ExpandDimsinputs_attacker_ship8features/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
?features/attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
=features/attacker_ship_embedding/to_sparse_input/ignore_valueCastHfeatures/attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9features/attacker_ship_embedding/to_sparse_input/NotEqualNotEqual4features/attacker_ship_embedding/ExpandDims:output:0Afeatures/attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
8features/attacker_ship_embedding/to_sparse_input/indicesWhere=features/attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7features/attacker_ship_embedding/to_sparse_input/valuesGatherNd4features/attacker_ship_embedding/ExpandDims:output:0@features/attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<features/attacker_ship_embedding/to_sparse_input/dense_shapeShape4features/attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Kfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle@features/attacker_ship_embedding/to_sparse_input/values:output:0Lfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
/features/attacker_ship_embedding/ReadVariableOpReadVariableOp8features_attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SliceSliceEfeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdOfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2Efeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Zfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape@features/attacker_ship_embedding/to_sparse_input/indices:index:0Efeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentityGfeatures/attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqual`features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Xfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2_features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2`features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentity]features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0cfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceyfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
_features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquexfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*B
_class8
64loc:@features/attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV27features/attacker_ship_embedding/ReadVariableOp:value:0cfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*B
_class8
64loc:@features/attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Xfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMean{features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshape~features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeafeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceOfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0]features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0_features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0_features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stackPackQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/TileTileSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeafeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
@features/attacker_ship_embedding/attacker_ship_embedding_weightsSelectNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0afeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1CastEfeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceKfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1ShapeIfeatures/attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2ReshapeIfeatures/attacker_ship_embedding/attacker_ship_embedding_weights:output:0Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
&features/attacker_ship_embedding/ShapeShapeSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:~
4features/attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6features/attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6features/attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.features/attacker_ship_embedding/strided_sliceStridedSlice/features/attacker_ship_embedding/Shape:output:0=features/attacker_ship_embedding/strided_slice/stack:output:0?features/attacker_ship_embedding/strided_slice/stack_1:output:0?features/attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0features/attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
.features/attacker_ship_embedding/Reshape/shapePack7features/attacker_ship_embedding/strided_slice:output:09features/attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
(features/attacker_ship_embedding/ReshapeReshapeSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:07features/attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������x
-features/victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
)features/victim_ship_embedding/ExpandDims
ExpandDimsinputs_victim_ship6features/victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
=features/victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
;features/victim_ship_embedding/to_sparse_input/ignore_valueCastFfeatures/victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7features/victim_ship_embedding/to_sparse_input/NotEqualNotEqual2features/victim_ship_embedding/ExpandDims:output:0?features/victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
6features/victim_ship_embedding/to_sparse_input/indicesWhere;features/victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
5features/victim_ship_embedding/to_sparse_input/valuesGatherNd2features/victim_ship_embedding/ExpandDims:output:0>features/victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:features/victim_ship_embedding/to_sparse_input/dense_shapeShape2features/victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
<features/victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ifeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle>features/victim_ship_embedding/to_sparse_input/values:output:0Jfeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
-features/victim_ship_embedding/ReadVariableOpReadVariableOp6features_victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Hfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/SliceSliceCfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Qfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Afeatures/victim_ship_embedding/victim_ship_embedding_weights/ProdProdKfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Efeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2Cfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Vfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Nfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape>features/victim_ship_embedding/to_sparse_input/indices:index:0Cfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentityEfeatures/victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqual\features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Tfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/WhereWhereMfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Where:index:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2[features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2\features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Efeatures/victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityYfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Vfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
dfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Nfeatures/victim_ship_embedding/victim_ship_embedding_weights/Identity:output:0_features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
hfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
bfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceufeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0qfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
[features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquetfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*@
_class6
42loc:@features/victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
efeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV25features/victim_ship_embedding/ReadVariableOp:value:0_features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*@
_class6
42loc:@features/victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
nfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Tfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0afeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0kfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ffeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapezfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/ShapeShape]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceKfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Yfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0[features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0[features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/stackPackMfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Afeatures/victim_ship_embedding/victim_ship_embedding_weights/TileTileOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLike]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
<features/victim_ship_embedding/victim_ship_embedding_weightsSelectJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast_1CastCfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1SliceGfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape_1ShapeEfeatures/victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceMfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Hfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Qfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ffeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2ReshapeEfeatures/victim_ship_embedding/victim_ship_embedding_weights:output:0Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
$features/victim_ship_embedding/ShapeShapeOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:|
2features/victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4features/victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4features/victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,features/victim_ship_embedding/strided_sliceStridedSlice-features/victim_ship_embedding/Shape:output:0;features/victim_ship_embedding/strided_slice/stack:output:0=features/victim_ship_embedding/strided_slice/stack_1:output:0=features/victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.features/victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
,features/victim_ship_embedding/Reshape/shapePack5features/victim_ship_embedding/strided_slice:output:07features/victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
&features/victim_ship_embedding/ReshapeReshapeOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:05features/victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������_
features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
features/concatConcatV21features/attacker_ship_embedding/Reshape:output:0/features/victim_ship_embedding/Reshape:output:0features/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
 middlerelu/MatMul/ReadVariableOpReadVariableOp)middlerelu_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
middlerelu/MatMulMatMulfeatures/concat:output:0(middlerelu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!middlerelu/BiasAdd/ReadVariableOpReadVariableOp*middlerelu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
middlerelu/BiasAddBiasAddmiddlerelu/MatMul:product:0)middlerelu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
middlerelu/ReluRelumiddlerelu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMulmiddlerelu/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp?^features/attacker_ship_embedding/None_Lookup/LookupTableFindV20^features/attacker_ship_embedding/ReadVariableOp=^features/victim_ship_embedding/None_Lookup/LookupTableFindV2.^features/victim_ship_embedding/ReadVariableOp"^middlerelu/BiasAdd/ReadVariableOp!^middlerelu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2�
>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2>features/attacker_ship_embedding/None_Lookup/LookupTableFindV22b
/features/attacker_ship_embedding/ReadVariableOp/features/attacker_ship_embedding/ReadVariableOp2|
<features/victim_ship_embedding/None_Lookup/LookupTableFindV2<features/victim_ship_embedding/None_Lookup/LookupTableFindV22^
-features/victim_ship_embedding/ReadVariableOp-features/victim_ship_embedding/ReadVariableOp2F
!middlerelu/BiasAdd/ReadVariableOp!middlerelu/BiasAdd/ReadVariableOp2D
 middlerelu/MatMul/ReadVariableOp middlerelu/MatMul/ReadVariableOp:Y U
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_corp:YU
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_ship:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/hour:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/time:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_corp:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_ship:

_output_shapes
: :


_output_shapes
: 
�
;
__inference__creator_606150
identity��
hash_tablen

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name556801*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
��
�
D__inference_features_layer_call_and_return_conditional_losses_605042
features	

features_1	

features_2	

features_3

features_4	

features_5	F
Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleG
Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	B
/attacker_ship_embedding_readvariableop_resource:	�D
@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleE
Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value	@
-victim_ship_embedding_readvariableop_resource:	�
identity��5attacker_ship_embedding/None_Lookup/LookupTableFindV2�&attacker_ship_embedding/ReadVariableOp�3victim_ship_embedding/None_Lookup/LookupTableFindV2�$victim_ship_embedding/ReadVariableOpq
&attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"attacker_ship_embedding/ExpandDims
ExpandDims
features_1/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
6attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
4attacker_ship_embedding/to_sparse_input/ignore_valueCast?attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0attacker_ship_embedding/to_sparse_input/NotEqualNotEqual+attacker_ship_embedding/ExpandDims:output:08attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
/attacker_ship_embedding/to_sparse_input/indicesWhere4attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
.attacker_ship_embedding/to_sparse_input/valuesGatherNd+attacker_ship_embedding/ExpandDims:output:07attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
3attacker_ship_embedding/to_sparse_input/dense_shapeShape+attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
5attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle7attacker_ship_embedding/to_sparse_input/values:output:0Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&attacker_ship_embedding/ReadVariableOpReadVariableOp/attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Cattacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Battacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
=attacker_ship_embedding/attacker_ship_embedding_weights/SliceSlice<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
=attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
<attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdFattacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Hattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Eattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
@attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Qattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackEattacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape7attacker_ship_embedding/to_sparse_input/indices:index:0<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Nattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentity>attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Dattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqualWattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Oattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereHattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Eattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeEattacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2Vattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2Wattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentityTattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Qattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0Zattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
cattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
]attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicepattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0lattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Vattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniqueoattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
`attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2.attacker_ship_embedding/ReadVariableOp:value:0Zattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
iattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityiattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Oattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanrattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0\attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0fattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshapeuattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Pattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Kattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceFattacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0Tattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
=attacker_ship_embedding/attacker_ship_embedding_weights/stackPackHattacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
<attacker_ship_embedding/attacker_ship_embedding_weights/TileTileJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Battacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
7attacker_ship_embedding/attacker_ship_embedding_weightsSelectEattacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0Xattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1Cast<attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceBattacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1Shape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceHattacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Cattacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2Reshape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
attacker_ship_embedding/ShapeShapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:u
+attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%attacker_ship_embedding/strided_sliceStridedSlice&attacker_ship_embedding/Shape:output:04attacker_ship_embedding/strided_slice/stack:output:06attacker_ship_embedding/strided_slice/stack_1:output:06attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
%attacker_ship_embedding/Reshape/shapePack.attacker_ship_embedding/strided_slice:output:00attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
attacker_ship_embedding/ReshapeReshapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0.attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������o
$victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 victim_ship_embedding/ExpandDims
ExpandDims
features_5-victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:���������
4victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
2victim_ship_embedding/to_sparse_input/ignore_valueCast=victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
.victim_ship_embedding/to_sparse_input/NotEqualNotEqual)victim_ship_embedding/ExpandDims:output:06victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
-victim_ship_embedding/to_sparse_input/indicesWhere2victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
,victim_ship_embedding/to_sparse_input/valuesGatherNd)victim_ship_embedding/ExpandDims:output:05victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
1victim_ship_embedding/to_sparse_input/dense_shapeShape)victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
3victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle5victim_ship_embedding/to_sparse_input/values:output:0Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
$victim_ship_embedding/ReadVariableOpReadVariableOp-victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
?victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9victim_ship_embedding/victim_ship_embedding_weights/SliceSlice:victim_ship_embedding/to_sparse_input/dense_shape:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
9victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8victim_ship_embedding/victim_ship_embedding_weights/ProdProdBvictim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Dvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Avictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2:victim_ship_embedding/to_sparse_input/dense_shape:output:0Mvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
:victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackAvictim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Evictim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape5victim_ship_embedding/to_sparse_input/indices:index:0:victim_ship_embedding/to_sparse_input/dense_shape:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Jvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentity<victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
@victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqualSvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Kvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/WhereWhereDvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Avictim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeAvictim_ship_embedding/victim_ship_embedding_weights/Where:index:0Jvictim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2Rvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2Svictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityPvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Mvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
[victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Evictim_ship_embedding/victim_ship_embedding_weights/Identity:output:0Vvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
_victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Yvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicelvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0hvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Rvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquekvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
\victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2,victim_ship_embedding/ReadVariableOp:value:0Vvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
evictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityevictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Kvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeannvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0Xvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0bvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapeqvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Lvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/ShapeShapeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Gvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Avictim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceBvictim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Pvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
9victim_ship_embedding/victim_ship_embedding_weights/stackPackDvictim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
8victim_ship_embedding/victim_ship_embedding_weights/TileTileFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
>victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLikeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
3victim_ship_embedding/victim_ship_embedding_weightsSelectAvictim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0Tvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
:victim_ship_embedding/victim_ship_embedding_weights/Cast_1Cast:victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
@victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
;victim_ship_embedding/victim_ship_embedding_weights/Slice_1Slice>victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
;victim_ship_embedding/victim_ship_embedding_weights/Shape_1Shape<victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
@victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceDvictim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
?victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_2Reshape<victim_ship_embedding/victim_ship_embedding_weights:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
victim_ship_embedding/ShapeShapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:s
)victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#victim_ship_embedding/strided_sliceStridedSlice$victim_ship_embedding/Shape:output:02victim_ship_embedding/strided_slice/stack:output:04victim_ship_embedding/strided_slice/stack_1:output:04victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
#victim_ship_embedding/Reshape/shapePack,victim_ship_embedding/strided_slice:output:0.victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
victim_ship_embedding/ReshapeReshapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0,victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2(attacker_ship_embedding/Reshape:output:0&victim_ship_embedding/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^attacker_ship_embedding/None_Lookup/LookupTableFindV2'^attacker_ship_embedding/ReadVariableOp4^victim_ship_embedding/None_Lookup/LookupTableFindV2%^victim_ship_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 2n
5attacker_ship_embedding/None_Lookup/LookupTableFindV25attacker_ship_embedding/None_Lookup/LookupTableFindV22P
&attacker_ship_embedding/ReadVariableOp&attacker_ship_embedding/ReadVariableOp2j
3victim_ship_embedding/None_Lookup/LookupTableFindV23victim_ship_embedding/None_Lookup/LookupTableFindV22L
$victim_ship_embedding/ReadVariableOp$victim_ship_embedding/ReadVariableOp:M I
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:MI
#
_output_shapes
:���������
"
_user_specified_name
features:

_output_shapes
: :


_output_shapes
: 
�

�
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_middlerelu_layer_call_fn_606114

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference__initializer_6061765
1table_init556892_lookuptableimportv2_table_handle-
)table_init556892_lookuptableimportv2_keys	/
+table_init556892_lookuptableimportv2_values	
identity��$table_init556892/LookupTableImportV2�
$table_init556892/LookupTableImportV2LookupTableImportV21table_init556892_lookuptableimportv2_table_handle)table_init556892_lookuptableimportv2_keys+table_init556892_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^table_init556892/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2L
$table_init556892/LookupTableImportV2$table_init556892/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
�
$__inference_signature_wrapper_605715
attacker_corp	
attacker_ship	
hour	
time
victim_corp	
victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallattacker_corpattacker_shiphourtimevictim_corpvictim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_604557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:���������
'
_user_specified_nameattacker_corp:RN
#
_output_shapes
:���������
'
_user_specified_nameattacker_ship:IE
#
_output_shapes
:���������

_user_specified_namehour:IE
#
_output_shapes
:���������

_user_specified_nametime:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_corp:PL
#
_output_shapes
:���������
%
_user_specified_namevictim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
__inference_<lambda>_6061895
1table_init556800_lookuptableimportv2_table_handle-
)table_init556800_lookuptableimportv2_keys	/
+table_init556800_lookuptableimportv2_values	
identity��$table_init556800/LookupTableImportV2�
$table_init556800/LookupTableImportV2LookupTableImportV21table_init556800_lookuptableimportv2_table_handle)table_init556800_lookuptableimportv2_keys+table_init556800_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^table_init556800/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2L
$table_init556800/LookupTableImportV2$table_init556800/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
-
__inference__destroyer_606163
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
��
�
D__inference_features_layer_call_and_return_conditional_losses_606105
features_attacker_corp	
features_attacker_ship	
features_hour	
features_time
features_victim_corp	
features_victim_ship	F
Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleG
Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	B
/attacker_ship_embedding_readvariableop_resource:	�D
@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleE
Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value	@
-victim_ship_embedding_readvariableop_resource:	�
identity��5attacker_ship_embedding/None_Lookup/LookupTableFindV2�&attacker_ship_embedding/ReadVariableOp�3victim_ship_embedding/None_Lookup/LookupTableFindV2�$victim_ship_embedding/ReadVariableOpq
&attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"attacker_ship_embedding/ExpandDims
ExpandDimsfeatures_attacker_ship/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
6attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
4attacker_ship_embedding/to_sparse_input/ignore_valueCast?attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
0attacker_ship_embedding/to_sparse_input/NotEqualNotEqual+attacker_ship_embedding/ExpandDims:output:08attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
/attacker_ship_embedding/to_sparse_input/indicesWhere4attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
.attacker_ship_embedding/to_sparse_input/valuesGatherNd+attacker_ship_embedding/ExpandDims:output:07attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
3attacker_ship_embedding/to_sparse_input/dense_shapeShape+attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
5attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Battacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle7attacker_ship_embedding/to_sparse_input/values:output:0Cattacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
&attacker_ship_embedding/ReadVariableOpReadVariableOp/attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Cattacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Battacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
=attacker_ship_embedding/attacker_ship_embedding_weights/SliceSlice<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
=attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
<attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdFattacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Hattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Eattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
@attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Qattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackEattacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape7attacker_ship_embedding/to_sparse_input/indices:index:0<attacker_ship_embedding/to_sparse_input/dense_shape:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Nattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentity>attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Fattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Dattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqualWattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Oattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereHattacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Eattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeEattacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2Vattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Battacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2Wattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Pattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
@attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentityTattacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Qattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
_attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsKattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Kattacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Iattacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0Zattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
cattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
]attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicepattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0lattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Vattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniqueoattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
eattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
`attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2.attacker_ship_embedding/ReadVariableOp:value:0Zattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0nattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*9
_class/
-+loc:@attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
iattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityiattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Oattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanrattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0\attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0fattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Gattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshapeuattacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Pattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
=attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Kattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Mattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceFattacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0Tattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0Vattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
=attacker_ship_embedding/attacker_ship_embedding_weights/stackPackHattacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
<attacker_ship_embedding/attacker_ship_embedding_weights/TileTileJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Battacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeXattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
7attacker_ship_embedding/attacker_ship_embedding_weightsSelectEattacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Fattacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0Xattacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
>attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1Cast<attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceBattacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
?attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1Shape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Eattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Dattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
?attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceHattacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Nattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Mattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Cattacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Hattacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Lattacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Aattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2Reshape@attacker_ship_embedding/attacker_ship_embedding_weights:output:0Gattacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
attacker_ship_embedding/ShapeShapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:u
+attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%attacker_ship_embedding/strided_sliceStridedSlice&attacker_ship_embedding/Shape:output:04attacker_ship_embedding/strided_slice/stack:output:06attacker_ship_embedding/strided_slice/stack_1:output:06attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
%attacker_ship_embedding/Reshape/shapePack.attacker_ship_embedding/strided_slice:output:00attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
attacker_ship_embedding/ReshapeReshapeJattacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0.attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������o
$victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 victim_ship_embedding/ExpandDims
ExpandDimsfeatures_victim_ship-victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:���������
4victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
2victim_ship_embedding/to_sparse_input/ignore_valueCast=victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
.victim_ship_embedding/to_sparse_input/NotEqualNotEqual)victim_ship_embedding/ExpandDims:output:06victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
-victim_ship_embedding/to_sparse_input/indicesWhere2victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
,victim_ship_embedding/to_sparse_input/valuesGatherNd)victim_ship_embedding/ExpandDims:output:05victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
1victim_ship_embedding/to_sparse_input/dense_shapeShape)victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
3victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2@victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle5victim_ship_embedding/to_sparse_input/values:output:0Avictim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
$victim_ship_embedding/ReadVariableOpReadVariableOp-victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
?victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9victim_ship_embedding/victim_ship_embedding_weights/SliceSlice:victim_ship_embedding/to_sparse_input/dense_shape:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
9victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8victim_ship_embedding/victim_ship_embedding_weights/ProdProdBvictim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Dvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Avictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2:victim_ship_embedding/to_sparse_input/dense_shape:output:0Mvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
:victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackAvictim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Evictim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape5victim_ship_embedding/to_sparse_input/indices:index:0:victim_ship_embedding/to_sparse_input/dense_shape:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Jvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentity<victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Bvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
@victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqualSvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Kvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/WhereWhereDvictim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Avictim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeAvictim_ship_embedding/victim_ship_embedding_weights/Where:index:0Jvictim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2Rvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
>victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2Svictim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Lvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityPvictim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Mvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
[victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Gvictim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Evictim_ship_embedding/victim_ship_embedding_weights/Identity:output:0Vvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
_victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Yvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicelvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0hvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Rvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquekvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
avictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
\victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2,victim_ship_embedding/ReadVariableOp:value:0Vvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0jvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
evictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityevictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Kvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeannvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0Xvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0bvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Cvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapeqvictim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Lvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
9victim_ship_embedding/victim_ship_embedding_weights/ShapeShapeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Gvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ivictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Avictim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceBvictim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Pvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0Rvictim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
9victim_ship_embedding/victim_ship_embedding_weights/stackPackDvictim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
8victim_ship_embedding/victim_ship_embedding_weights/TileTileFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
>victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLikeTvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
3victim_ship_embedding/victim_ship_embedding_weightsSelectAvictim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Bvictim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0Tvictim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
:victim_ship_embedding/victim_ship_embedding_weights/Cast_1Cast:victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
@victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
;victim_ship_embedding/victim_ship_embedding_weights/Slice_1Slice>victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
;victim_ship_embedding/victim_ship_embedding_weights/Shape_1Shape<victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Avictim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
@victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
;victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceDvictim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Jvictim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Ivictim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
?victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Dvictim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Hvictim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
=victim_ship_embedding/victim_ship_embedding_weights/Reshape_2Reshape<victim_ship_embedding/victim_ship_embedding_weights:output:0Cvictim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
victim_ship_embedding/ShapeShapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:s
)victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#victim_ship_embedding/strided_sliceStridedSlice$victim_ship_embedding/Shape:output:02victim_ship_embedding/strided_slice/stack:output:04victim_ship_embedding/strided_slice/stack_1:output:04victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
#victim_ship_embedding/Reshape/shapePack,victim_ship_embedding/strided_slice:output:0.victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
victim_ship_embedding/ReshapeReshapeFvictim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0,victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2(attacker_ship_embedding/Reshape:output:0&victim_ship_embedding/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^attacker_ship_embedding/None_Lookup/LookupTableFindV2'^attacker_ship_embedding/ReadVariableOp4^victim_ship_embedding/None_Lookup/LookupTableFindV2%^victim_ship_embedding/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 2n
5attacker_ship_embedding/None_Lookup/LookupTableFindV25attacker_ship_embedding/None_Lookup/LookupTableFindV22P
&attacker_ship_embedding/ReadVariableOp&attacker_ship_embedding/ReadVariableOp2j
3victim_ship_embedding/None_Lookup/LookupTableFindV23victim_ship_embedding/None_Lookup/LookupTableFindV22L
$victim_ship_embedding/ReadVariableOp$victim_ship_embedding/ReadVariableOp:[ W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_corp:[W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_ship:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/hour:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/time:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_corp:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
)__inference_features_layer_call_fn_605759
features_attacker_corp	
features_attacker_ship	
features_hour	
features_time
features_victim_corp	
features_victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_attacker_corpfeatures_attacker_shipfeatures_hourfeatures_timefeatures_victim_corpfeatures_victim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_605042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_corp:[W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_ship:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/hour:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/time:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_corp:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
__inference__initializer_6061585
1table_init556800_lookuptableimportv2_table_handle-
)table_init556800_lookuptableimportv2_keys	/
+table_init556800_lookuptableimportv2_values	
identity��$table_init556800/LookupTableImportV2�
$table_init556800/LookupTableImportV2LookupTableImportV21table_init556800_lookuptableimportv2_table_handle)table_init556800_lookuptableimportv2_keys+table_init556800_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: m
NoOpNoOp%^table_init556800/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2L
$table_init556800/LookupTableImportV2$table_init556800/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
�
-
__inference__destroyer_606181
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_605126

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
features_605102
features_605104	"
features_605106:	�
features_605108
features_605110	"
features_605112:	�$
middlerelu_605115:	� 
middlerelu_605117:	�!
dense_2_605120:	�
dense_2_605122:
identity��dense_2/StatefulPartitionedCall� features/StatefulPartitionedCall�"middlerelu/StatefulPartitionedCall�
 features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5features_605102features_605104features_605106features_605108features_605110features_605112*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_605042�
"middlerelu/StatefulPartitionedCallStatefulPartitionedCall)features/StatefulPartitionedCall:output:0middlerelu_605115middlerelu_605117*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_middlerelu_layer_call_and_return_conditional_losses_604772�
dense_2/StatefulPartitionedCallStatefulPartitionedCall+middlerelu/StatefulPartitionedCall:output:0dense_2_605120dense_2_605122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_604789w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_2/StatefulPartitionedCall!^features/StatefulPartitionedCall#^middlerelu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2D
 features/StatefulPartitionedCall features/StatefulPartitionedCall2H
"middlerelu/StatefulPartitionedCall"middlerelu/StatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :


_output_shapes
: 
�
�
(__inference_dense_2_layer_call_fn_606134

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_604789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
F__inference_middlerelu_layer_call_and_return_conditional_losses_606125

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�

H__inference_sequential_2_layer_call_and_return_conditional_losses_605683
inputs_attacker_corp	
inputs_attacker_ship	
inputs_hour	
inputs_time
inputs_victim_corp	
inputs_victim_ship	O
Kfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handleP
Lfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value	K
8features_attacker_ship_embedding_readvariableop_resource:	�M
Ifeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handleN
Jfeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value	I
6features_victim_ship_embedding_readvariableop_resource:	�<
)middlerelu_matmul_readvariableop_resource:	�9
*middlerelu_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�5
'dense_2_biasadd_readvariableop_resource:
identity��dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2�/features/attacker_ship_embedding/ReadVariableOp�<features/victim_ship_embedding/None_Lookup/LookupTableFindV2�-features/victim_ship_embedding/ReadVariableOp�!middlerelu/BiasAdd/ReadVariableOp� middlerelu/MatMul/ReadVariableOpz
/features/attacker_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
+features/attacker_ship_embedding/ExpandDims
ExpandDimsinputs_attacker_ship8features/attacker_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
?features/attacker_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
=features/attacker_ship_embedding/to_sparse_input/ignore_valueCastHfeatures/attacker_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
9features/attacker_ship_embedding/to_sparse_input/NotEqualNotEqual4features/attacker_ship_embedding/ExpandDims:output:0Afeatures/attacker_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
8features/attacker_ship_embedding/to_sparse_input/indicesWhere=features/attacker_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
7features/attacker_ship_embedding/to_sparse_input/valuesGatherNd4features/attacker_ship_embedding/ExpandDims:output:0@features/attacker_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
<features/attacker_ship_embedding/to_sparse_input/dense_shapeShape4features/attacker_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Kfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_table_handle@features/attacker_ship_embedding/to_sparse_input/values:output:0Lfeatures_attacker_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
/features/attacker_ship_embedding/ReadVariableOpReadVariableOp8features_attacker_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SliceSliceEfeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/begin:output:0Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ProdProdOfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2GatherV2Efeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Zfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/indices:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/xPackNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Prod:output:0Rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshapeSparseReshape@features/attacker_ship_embedding/to_sparse_input/indices:index:0Efeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/IdentityIdentityGfeatures/attacker_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqualGreaterEqual`features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Xfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/WhereWhereQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ReshapeReshapeNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Where:index:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1GatherV2_features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_indices:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2GatherV2`features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape/Identity:output:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape:output:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/IdentityIdentity]features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_1:output:0Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/GatherV2_2:output:0Rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Identity:output:0cfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceyfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
_features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquexfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*B
_class8
64loc:@features/attacker_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
ifeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV27features/attacker_ship_embedding/ReadVariableOp:value:0cfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*B
_class8
64loc:@features/attacker_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
rfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Xfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMean{features/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1Reshape~features/attacker_ship_embedding/attacker_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Yfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/ShapeShapeafeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Tfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_sliceStridedSliceOfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape:output:0]features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack:output:0_features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_1:output:0_features/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Ffeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stackPackQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack/0:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Efeatures/attacker_ship_embedding/attacker_ship_embedding_weights/TileTileSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_1:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Kfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like	ZerosLikeafeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
@features/attacker_ship_embedding/attacker_ship_embedding_weightsSelectNfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Tile:output:0Ofeatures/attacker_ship_embedding/attacker_ship_embedding_weights/zeros_like:y:0afeatures/attacker_ship_embedding/attacker_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1CastEfeatures/attacker_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1SliceKfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Cast_1:y:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/begin:output:0Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1ShapeIfeatures/attacker_ship_embedding/attacker_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Nfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Mfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2SliceQfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Shape_1:output:0Wfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/begin:output:0Vfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Lfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concatConcatV2Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_1:output:0Qfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Slice_2:output:0Ufeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2ReshapeIfeatures/attacker_ship_embedding/attacker_ship_embedding_weights:output:0Pfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
&features/attacker_ship_embedding/ShapeShapeSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:~
4features/attacker_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6features/attacker_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6features/attacker_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.features/attacker_ship_embedding/strided_sliceStridedSlice/features/attacker_ship_embedding/Shape:output:0=features/attacker_ship_embedding/strided_slice/stack:output:0?features/attacker_ship_embedding/strided_slice/stack_1:output:0?features/attacker_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0features/attacker_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
.features/attacker_ship_embedding/Reshape/shapePack7features/attacker_ship_embedding/strided_slice:output:09features/attacker_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
(features/attacker_ship_embedding/ReshapeReshapeSfeatures/attacker_ship_embedding/attacker_ship_embedding_weights/Reshape_2:output:07features/attacker_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������x
-features/victim_ship_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
)features/victim_ship_embedding/ExpandDims
ExpandDimsinputs_victim_ship6features/victim_ship_embedding/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:����������
=features/victim_ship_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
;features/victim_ship_embedding/to_sparse_input/ignore_valueCastFfeatures/victim_ship_embedding/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
7features/victim_ship_embedding/to_sparse_input/NotEqualNotEqual2features/victim_ship_embedding/ExpandDims:output:0?features/victim_ship_embedding/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:����������
6features/victim_ship_embedding/to_sparse_input/indicesWhere;features/victim_ship_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
5features/victim_ship_embedding/to_sparse_input/valuesGatherNd2features/victim_ship_embedding/ExpandDims:output:0>features/victim_ship_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:features/victim_ship_embedding/to_sparse_input/dense_shapeShape2features/victim_ship_embedding/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	�
<features/victim_ship_embedding/None_Lookup/LookupTableFindV2LookupTableFindV2Ifeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_table_handle>features/victim_ship_embedding/to_sparse_input/values:output:0Jfeatures_victim_ship_embedding_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:����������
-features/victim_ship_embedding/ReadVariableOpReadVariableOp6features_victim_ship_embedding_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Hfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/SliceSliceCfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Qfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/begin:output:0Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Afeatures/victim_ship_embedding/victim_ship_embedding_weights/ProdProdKfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Efeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2GatherV2Cfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Vfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/indices:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast/xPackJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Prod:output:0Nfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshapeSparseReshape>features/victim_ship_embedding/to_sparse_input/indices:index:0Cfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/IdentityIdentityEfeatures/victim_ship_embedding/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqualGreaterEqual\features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Tfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/WhereWhereMfeatures/victim_ship_embedding/victim_ship_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/ReshapeReshapeJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Where:index:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1GatherV2[features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_indices:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2GatherV2\features/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape/Identity:output:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape:output:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Efeatures/victim_ship_embedding/victim_ship_embedding_weights/IdentityIdentityYfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Vfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
dfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_1:output:0Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/GatherV2_2:output:0Nfeatures/victim_ship_embedding/victim_ship_embedding_weights/Identity:output:0_features/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
hfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
bfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceufeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0qfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
[features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/UniqueUniquetfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
jfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*@
_class6
42loc:@features/victim_ship_embedding/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : �
efeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV25features/victim_ship_embedding/ReadVariableOp:value:0_features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:y:0sfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*@
_class6
42loc:@features/victim_ship_embedding/ReadVariableOp*'
_output_shapes
:����������
nfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*'
_output_shapes
:����������
Tfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0afeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/Unique:idx:0kfeatures/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
T0*
Tsegmentids0	*'
_output_shapes
:����������
Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ffeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1Reshapezfeatures/victim_ship_embedding/victim_ship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ufeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/ShapeShape]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
:�
Pfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_sliceStridedSliceKfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape:output:0Yfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack:output:0[features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_1:output:0[features/victim_ship_embedding/victim_ship_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Bfeatures/victim_ship_embedding/victim_ship_embedding_weights/stackPackMfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack/0:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Afeatures/victim_ship_embedding/victim_ship_embedding_weights/TileTileOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_1:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:����������
Gfeatures/victim_ship_embedding/victim_ship_embedding_weights/zeros_like	ZerosLike]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
<features/victim_ship_embedding/victim_ship_embedding_weightsSelectJfeatures/victim_ship_embedding/victim_ship_embedding_weights/Tile:output:0Kfeatures/victim_ship_embedding/victim_ship_embedding_weights/zeros_like:y:0]features/victim_ship_embedding/victim_ship_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:����������
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast_1CastCfeatures/victim_ship_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1SliceGfeatures/victim_ship_embedding/victim_ship_embedding_weights/Cast_1:y:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/begin:output:0Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape_1ShapeEfeatures/victim_ship_embedding/victim_ship_embedding_weights:output:0*
T0*
_output_shapes
:�
Jfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Ifeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Dfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2SliceMfeatures/victim_ship_embedding/victim_ship_embedding_weights/Shape_1:output:0Sfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/begin:output:0Rfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Hfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Cfeatures/victim_ship_embedding/victim_ship_embedding_weights/concatConcatV2Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_1:output:0Mfeatures/victim_ship_embedding/victim_ship_embedding_weights/Slice_2:output:0Qfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ffeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2ReshapeEfeatures/victim_ship_embedding/victim_ship_embedding_weights:output:0Lfeatures/victim_ship_embedding/victim_ship_embedding_weights/concat:output:0*
T0*'
_output_shapes
:����������
$features/victim_ship_embedding/ShapeShapeOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
:|
2features/victim_ship_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4features/victim_ship_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4features/victim_ship_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,features/victim_ship_embedding/strided_sliceStridedSlice-features/victim_ship_embedding/Shape:output:0;features/victim_ship_embedding/strided_slice/stack:output:0=features/victim_ship_embedding/strided_slice/stack_1:output:0=features/victim_ship_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.features/victim_ship_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
,features/victim_ship_embedding/Reshape/shapePack5features/victim_ship_embedding/strided_slice:output:07features/victim_ship_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
&features/victim_ship_embedding/ReshapeReshapeOfeatures/victim_ship_embedding/victim_ship_embedding_weights/Reshape_2:output:05features/victim_ship_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������_
features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
features/concatConcatV21features/attacker_ship_embedding/Reshape:output:0/features/victim_ship_embedding/Reshape:output:0features/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
 middlerelu/MatMul/ReadVariableOpReadVariableOp)middlerelu_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
middlerelu/MatMulMatMulfeatures/concat:output:0(middlerelu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!middlerelu/BiasAdd/ReadVariableOpReadVariableOp*middlerelu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
middlerelu/BiasAddBiasAddmiddlerelu/MatMul:product:0)middlerelu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
middlerelu/ReluRelumiddlerelu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_2/MatMulMatMulmiddlerelu/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp?^features/attacker_ship_embedding/None_Lookup/LookupTableFindV20^features/attacker_ship_embedding/ReadVariableOp=^features/victim_ship_embedding/None_Lookup/LookupTableFindV2.^features/victim_ship_embedding/ReadVariableOp"^middlerelu/BiasAdd/ReadVariableOp!^middlerelu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n:���������:���������:���������:���������:���������:���������: : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2�
>features/attacker_ship_embedding/None_Lookup/LookupTableFindV2>features/attacker_ship_embedding/None_Lookup/LookupTableFindV22b
/features/attacker_ship_embedding/ReadVariableOp/features/attacker_ship_embedding/ReadVariableOp2|
<features/victim_ship_embedding/None_Lookup/LookupTableFindV2<features/victim_ship_embedding/None_Lookup/LookupTableFindV22^
-features/victim_ship_embedding/ReadVariableOp-features/victim_ship_embedding/ReadVariableOp2F
!middlerelu/BiasAdd/ReadVariableOp!middlerelu/BiasAdd/ReadVariableOp2D
 middlerelu/MatMul/ReadVariableOp middlerelu/MatMul/ReadVariableOp:Y U
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_corp:YU
#
_output_shapes
:���������
.
_user_specified_nameinputs/attacker_ship:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/hour:PL
#
_output_shapes
:���������
%
_user_specified_nameinputs/time:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_corp:WS
#
_output_shapes
:���������
,
_user_specified_nameinputs/victim_ship:

_output_shapes
: :


_output_shapes
: 
�
�
)__inference_features_layer_call_fn_605737
features_attacker_corp	
features_attacker_ship	
features_hour	
features_time
features_victim_corp	
features_victim_ship	
unknown
	unknown_0	
	unknown_1:	�
	unknown_2
	unknown_3	
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_attacker_corpfeatures_attacker_shipfeatures_hourfeatures_timefeatures_victim_corpfeatures_victim_shipunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2							*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_features_layer_call_and_return_conditional_losses_604747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:���������:���������:���������:���������:���������:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_corp:[W
#
_output_shapes
:���������
0
_user_specified_namefeatures/attacker_ship:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/hour:RN
#
_output_shapes
:���������
'
_user_specified_namefeatures/time:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_corp:YU
#
_output_shapes
:���������
.
_user_specified_namefeatures/victim_ship:

_output_shapes
: :


_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
attacker_corp2
serving_default_attacker_corp:0	���������
C
attacker_ship2
serving_default_attacker_ship:0	���������
1
hour)
serving_default_hour:0	���������
1
time)
serving_default_time:0���������
?
victim_corp0
serving_default_victim_corp:0	���������
?
victim_ship0
serving_default_victim_ship:0	���������>
output_12
StatefulPartitionedCall_2:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
�
_feature_columns

_resources
-)attacker_ship_embedding/embedding_weights
+'victim_ship_embedding/embedding_weights
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratememfmgmh mi!mjvkvlvmvn vo!vp"
	optimizer
 "
trackable_dict_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
-__inference_sequential_2_layer_call_fn_604819
-__inference_sequential_2_layer_call_fn_605279
-__inference_sequential_2_layer_call_fn_605309
-__inference_sequential_2_layer_call_fn_605179�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_2_layer_call_and_return_conditional_losses_605496
H__inference_sequential_2_layer_call_and_return_conditional_losses_605683
H__inference_sequential_2_layer_call_and_return_conditional_losses_605211
H__inference_sequential_2_layer_call_and_return_conditional_losses_605243�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_604557attacker_corpattacker_shiphourtimevictim_corpvictim_ship"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
2serving_default"
signature_map
 "
trackable_list_wrapper
B
3attacker_ship
4victim_ship"
_generic_user_object
R:P	�2?sequential_2/features/attacker_ship_embedding/embedding_weights
P:N	�2=sequential_2/features/victim_ship_embedding/embedding_weights
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_features_layer_call_fn_605737
)__inference_features_layer_call_fn_605759�
���
FullArgSpecE
args=�:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_features_layer_call_and_return_conditional_losses_605932
D__inference_features_layer_call_and_return_conditional_losses_606105�
���
FullArgSpecE
args=�:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
1:/	�2sequential_2/middlerelu/kernel
+:)�2sequential_2/middlerelu/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_middlerelu_layer_call_fn_606114�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
F__inference_middlerelu_layer_call_and_return_conditional_losses_606125�
���
FullArgSpec
args�
jself
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
annotations� *
 
.:,	�2sequential_2/dense_2/kernel
':%2sequential_2/dense_2/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_2_layer_call_fn_606134�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
C__inference_dense_2_layer_call_and_return_conditional_losses_606145�
���
FullArgSpec
args�
jself
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
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_605715attacker_corpattacker_shiphourtimevictim_corpvictim_ship"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
8
Hattacker_ship_lookup"
_generic_user_object
6
Ivictim_ship_lookup"
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
N
	Jtotal
	Kcount
L	variables
M	keras_api"
_tf_keras_metric
^
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"
_tf_keras_metric
q
S
thresholds
Ttrue_positives
Ufalse_positives
V	variables
W	keras_api"
_tf_keras_metric
q
X
thresholds
Ytrue_positives
Zfalse_negatives
[	variables
\	keras_api"
_tf_keras_metric
j
]_initializer
^_create_resource
__initialize
`_destroy_resourceR jCustom.StaticHashTable
j
a_initializer
b_create_resource
c_initialize
d_destroy_resourceR jCustom.StaticHashTable
:  (2total
:  (2count
.
J0
K1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
.
T0
U1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
.
Y0
Z1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
"
_generic_user_object
�2�
__inference__creator_606150�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__initializer_606158�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__destroyer_606163�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
"
_generic_user_object
�2�
__inference__creator_606168�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__initializer_606176�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference__destroyer_606181�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
W:U	�2FAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/m
U:S	�2DAdam/sequential_2/features/victim_ship_embedding/embedding_weights/m
6:4	�2%Adam/sequential_2/middlerelu/kernel/m
0:.�2#Adam/sequential_2/middlerelu/bias/m
3:1	�2"Adam/sequential_2/dense_2/kernel/m
,:*2 Adam/sequential_2/dense_2/bias/m
W:U	�2FAdam/sequential_2/features/attacker_ship_embedding/embedding_weights/v
U:S	�2DAdam/sequential_2/features/victim_ship_embedding/embedding_weights/v
6:4	�2%Adam/sequential_2/middlerelu/kernel/v
0:.�2#Adam/sequential_2/middlerelu/bias/v
3:1	�2"Adam/sequential_2/dense_2/kernel/v
,:*2 Adam/sequential_2/dense_2/bias/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_57
__inference__creator_606150�

� 
� "� 7
__inference__creator_606168�

� 
� "� 9
__inference__destroyer_606163�

� 
� "� 9
__inference__destroyer_606181�

� 
� "� @
__inference__initializer_606158Hst�

� 
� "� @
__inference__initializer_606176Iuv�

� 
� "� �
!__inference__wrapped_model_604557�
HqIr !���
���
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	
� "3�0
.
output_1"�
output_1����������
C__inference_dense_2_layer_call_and_return_conditional_losses_606145] !0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� |
(__inference_dense_2_layer_call_fn_606134P !0�-
&�#
!�
inputs����������
� "�����������
D__inference_features_layer_call_and_return_conditional_losses_605932�HqIr���
���
���
=
attacker_corp,�)
features/attacker_corp���������	
=
attacker_ship,�)
features/attacker_ship���������	
+
hour#� 
features/hour���������	
+
time#� 
features/time���������
9
victim_corp*�'
features/victim_corp���������	
9
victim_ship*�'
features/victim_ship���������	

 
p 
� "%�"
�
0���������
� �
D__inference_features_layer_call_and_return_conditional_losses_606105�HqIr���
���
���
=
attacker_corp,�)
features/attacker_corp���������	
=
attacker_ship,�)
features/attacker_ship���������	
+
hour#� 
features/hour���������	
+
time#� 
features/time���������
9
victim_corp*�'
features/victim_corp���������	
9
victim_ship*�'
features/victim_ship���������	

 
p
� "%�"
�
0���������
� �
)__inference_features_layer_call_fn_605737�HqIr���
���
���
=
attacker_corp,�)
features/attacker_corp���������	
=
attacker_ship,�)
features/attacker_ship���������	
+
hour#� 
features/hour���������	
+
time#� 
features/time���������
9
victim_corp*�'
features/victim_corp���������	
9
victim_ship*�'
features/victim_ship���������	

 
p 
� "�����������
)__inference_features_layer_call_fn_605759�HqIr���
���
���
=
attacker_corp,�)
features/attacker_corp���������	
=
attacker_ship,�)
features/attacker_ship���������	
+
hour#� 
features/hour���������	
+
time#� 
features/time���������
9
victim_corp*�'
features/victim_corp���������	
9
victim_ship*�'
features/victim_ship���������	

 
p
� "�����������
F__inference_middlerelu_layer_call_and_return_conditional_losses_606125]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� 
+__inference_middlerelu_layer_call_fn_606114P/�,
%�"
 �
inputs���������
� "������������
H__inference_sequential_2_layer_call_and_return_conditional_losses_605211�
HqIr !���
���
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_605243�
HqIr !���
���
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	
p

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_605496�
HqIr !���
���
���
;
attacker_corp*�'
inputs/attacker_corp���������	
;
attacker_ship*�'
inputs/attacker_ship���������	
)
hour!�
inputs/hour���������	
)
time!�
inputs/time���������
7
victim_corp(�%
inputs/victim_corp���������	
7
victim_ship(�%
inputs/victim_ship���������	
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_605683�
HqIr !���
���
���
;
attacker_corp*�'
inputs/attacker_corp���������	
;
attacker_ship*�'
inputs/attacker_ship���������	
)
hour!�
inputs/hour���������	
)
time!�
inputs/time���������
7
victim_corp(�%
inputs/victim_corp���������	
7
victim_ship(�%
inputs/victim_ship���������	
p

 
� "%�"
�
0���������
� �
-__inference_sequential_2_layer_call_fn_604819�
HqIr !���
���
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	
p 

 
� "�����������
-__inference_sequential_2_layer_call_fn_605179�
HqIr !���
���
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	
p

 
� "�����������
-__inference_sequential_2_layer_call_fn_605279�
HqIr !���
���
���
;
attacker_corp*�'
inputs/attacker_corp���������	
;
attacker_ship*�'
inputs/attacker_ship���������	
)
hour!�
inputs/hour���������	
)
time!�
inputs/time���������
7
victim_corp(�%
inputs/victim_corp���������	
7
victim_ship(�%
inputs/victim_ship���������	
p 

 
� "�����������
-__inference_sequential_2_layer_call_fn_605309�
HqIr !���
���
���
;
attacker_corp*�'
inputs/attacker_corp���������	
;
attacker_ship*�'
inputs/attacker_ship���������	
)
hour!�
inputs/hour���������	
)
time!�
inputs/time���������
7
victim_corp(�%
inputs/victim_corp���������	
7
victim_ship(�%
inputs/victim_ship���������	
p

 
� "�����������
$__inference_signature_wrapper_605715�
HqIr !���
� 
���
4
attacker_corp#� 
attacker_corp���������	
4
attacker_ship#� 
attacker_ship���������	
"
hour�
hour���������	
"
time�
time���������
0
victim_corp!�
victim_corp���������	
0
victim_ship!�
victim_ship���������	"3�0
.
output_1"�
output_1���������