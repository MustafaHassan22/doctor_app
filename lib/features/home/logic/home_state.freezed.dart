// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _SpecializationLoading implements HomeState {
  const _SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationLoading()';
}


}




/// @nodoc


class _SpecializationSuccess implements HomeState {
  const _SpecializationSuccess(this.specializationResponseModel);
  

 final  SpecializationResponseModel specializationResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecializationSuccessCopyWith<_SpecializationSuccess> get copyWith => __$SpecializationSuccessCopyWithImpl<_SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationSuccess&&(identical(other.specializationResponseModel, specializationResponseModel) || other.specializationResponseModel == specializationResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,specializationResponseModel);

@override
String toString() {
  return 'HomeState.specializationSuccess(specializationResponseModel: $specializationResponseModel)';
}


}

/// @nodoc
abstract mixin class _$SpecializationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SpecializationSuccessCopyWith(_SpecializationSuccess value, $Res Function(_SpecializationSuccess) _then) = __$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationResponseModel specializationResponseModel
});




}
/// @nodoc
class __$SpecializationSuccessCopyWithImpl<$Res>
    implements _$SpecializationSuccessCopyWith<$Res> {
  __$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final _SpecializationSuccess _self;
  final $Res Function(_SpecializationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationResponseModel = null,}) {
  return _then(_SpecializationSuccess(
null == specializationResponseModel ? _self.specializationResponseModel : specializationResponseModel // ignore: cast_nullable_to_non_nullable
as SpecializationResponseModel,
  ));
}


}

/// @nodoc


class _SpecializationFailure implements HomeState {
  const _SpecializationFailure(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecializationFailureCopyWith<_SpecializationFailure> get copyWith => __$SpecializationFailureCopyWithImpl<_SpecializationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecializationFailure&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.specializationFailure(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class _$SpecializationFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SpecializationFailureCopyWith(_SpecializationFailure value, $Res Function(_SpecializationFailure) _then) = __$SpecializationFailureCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class __$SpecializationFailureCopyWithImpl<$Res>
    implements _$SpecializationFailureCopyWith<$Res> {
  __$SpecializationFailureCopyWithImpl(this._self, this._then);

  final _SpecializationFailure _self;
  final $Res Function(_SpecializationFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(_SpecializationFailure(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
