// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>()';
}


}

/// @nodoc
class $LoginStateCopyWith<T,$Res>  {
$LoginStateCopyWith(LoginState<T> _, $Res Function(LoginState<T>) __);
}


/// @nodoc


class Initial<T> implements LoginState<T> {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.initial()';
}


}




/// @nodoc


class LoginLoading<T> implements LoginState<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState<$T>.loginLoading()';
}


}




/// @nodoc


class LoginSuccess<T> implements LoginState<T> {
  const LoginSuccess(this.data);
  

 final  T data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<T, LoginSuccess<T>> get copyWith => _$LoginSuccessCopyWithImpl<T, LoginSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginState<$T>.loginSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $LoginSuccessCopyWith(LoginSuccess<T> value, $Res Function(LoginSuccess<T>) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<T,$Res>
    implements $LoginSuccessCopyWith<T, $Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess<T> _self;
  final $Res Function(LoginSuccess<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoginSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LoginFailure<T> implements LoginState<T> {
  const LoginFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureCopyWith<T, LoginFailure<T>> get copyWith => _$LoginFailureCopyWithImpl<T, LoginFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'LoginState<$T>.loginFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $LoginFailureCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $LoginFailureCopyWith(LoginFailure<T> value, $Res Function(LoginFailure<T>) _then) = _$LoginFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$LoginFailureCopyWithImpl<T,$Res>
    implements $LoginFailureCopyWith<T, $Res> {
  _$LoginFailureCopyWithImpl(this._self, this._then);

  final LoginFailure<T> _self;
  final $Res Function(LoginFailure<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(LoginFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
