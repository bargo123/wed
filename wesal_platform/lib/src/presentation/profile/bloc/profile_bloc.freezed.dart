// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCurrentUserInfo value)?  getCurrentUserInfo,TResult Function( _DeletePhoto value)?  deletePhoto,TResult Function( _AddPhoto value)?  addPhoto,TResult Function( _SetMainPhoto value)?  setMainPhoto,TResult Function( _UpdateUserValueByKey value)?  updateUserValueByKey,TResult Function( _EmitUserDetails value)?  emitUserDetails,TResult Function( _AddHobby value)?  addHobby,TResult Function( _RemoveHobby value)?  removeHobby,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo(_that);case _DeletePhoto() when deletePhoto != null:
return deletePhoto(_that);case _AddPhoto() when addPhoto != null:
return addPhoto(_that);case _SetMainPhoto() when setMainPhoto != null:
return setMainPhoto(_that);case _UpdateUserValueByKey() when updateUserValueByKey != null:
return updateUserValueByKey(_that);case _EmitUserDetails() when emitUserDetails != null:
return emitUserDetails(_that);case _AddHobby() when addHobby != null:
return addHobby(_that);case _RemoveHobby() when removeHobby != null:
return removeHobby(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCurrentUserInfo value)  getCurrentUserInfo,required TResult Function( _DeletePhoto value)  deletePhoto,required TResult Function( _AddPhoto value)  addPhoto,required TResult Function( _SetMainPhoto value)  setMainPhoto,required TResult Function( _UpdateUserValueByKey value)  updateUserValueByKey,required TResult Function( _EmitUserDetails value)  emitUserDetails,required TResult Function( _AddHobby value)  addHobby,required TResult Function( _RemoveHobby value)  removeHobby,}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo():
return getCurrentUserInfo(_that);case _DeletePhoto():
return deletePhoto(_that);case _AddPhoto():
return addPhoto(_that);case _SetMainPhoto():
return setMainPhoto(_that);case _UpdateUserValueByKey():
return updateUserValueByKey(_that);case _EmitUserDetails():
return emitUserDetails(_that);case _AddHobby():
return addHobby(_that);case _RemoveHobby():
return removeHobby(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCurrentUserInfo value)?  getCurrentUserInfo,TResult? Function( _DeletePhoto value)?  deletePhoto,TResult? Function( _AddPhoto value)?  addPhoto,TResult? Function( _SetMainPhoto value)?  setMainPhoto,TResult? Function( _UpdateUserValueByKey value)?  updateUserValueByKey,TResult? Function( _EmitUserDetails value)?  emitUserDetails,TResult? Function( _AddHobby value)?  addHobby,TResult? Function( _RemoveHobby value)?  removeHobby,}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo(_that);case _DeletePhoto() when deletePhoto != null:
return deletePhoto(_that);case _AddPhoto() when addPhoto != null:
return addPhoto(_that);case _SetMainPhoto() when setMainPhoto != null:
return setMainPhoto(_that);case _UpdateUserValueByKey() when updateUserValueByKey != null:
return updateUserValueByKey(_that);case _EmitUserDetails() when emitUserDetails != null:
return emitUserDetails(_that);case _AddHobby() when addHobby != null:
return addHobby(_that);case _RemoveHobby() when removeHobby != null:
return removeHobby(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getCurrentUserInfo,TResult Function( String image)?  deletePhoto,TResult Function( File image)?  addPhoto,TResult Function( String image)?  setMainPhoto,TResult Function( String key,  String? value)?  updateUserValueByKey,TResult Function( UserDetailsInfoModel user)?  emitUserDetails,TResult Function( String hobby)?  addHobby,TResult Function( String hobby)?  removeHobby,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo();case _DeletePhoto() when deletePhoto != null:
return deletePhoto(_that.image);case _AddPhoto() when addPhoto != null:
return addPhoto(_that.image);case _SetMainPhoto() when setMainPhoto != null:
return setMainPhoto(_that.image);case _UpdateUserValueByKey() when updateUserValueByKey != null:
return updateUserValueByKey(_that.key,_that.value);case _EmitUserDetails() when emitUserDetails != null:
return emitUserDetails(_that.user);case _AddHobby() when addHobby != null:
return addHobby(_that.hobby);case _RemoveHobby() when removeHobby != null:
return removeHobby(_that.hobby);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getCurrentUserInfo,required TResult Function( String image)  deletePhoto,required TResult Function( File image)  addPhoto,required TResult Function( String image)  setMainPhoto,required TResult Function( String key,  String? value)  updateUserValueByKey,required TResult Function( UserDetailsInfoModel user)  emitUserDetails,required TResult Function( String hobby)  addHobby,required TResult Function( String hobby)  removeHobby,}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo():
return getCurrentUserInfo();case _DeletePhoto():
return deletePhoto(_that.image);case _AddPhoto():
return addPhoto(_that.image);case _SetMainPhoto():
return setMainPhoto(_that.image);case _UpdateUserValueByKey():
return updateUserValueByKey(_that.key,_that.value);case _EmitUserDetails():
return emitUserDetails(_that.user);case _AddHobby():
return addHobby(_that.hobby);case _RemoveHobby():
return removeHobby(_that.hobby);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getCurrentUserInfo,TResult? Function( String image)?  deletePhoto,TResult? Function( File image)?  addPhoto,TResult? Function( String image)?  setMainPhoto,TResult? Function( String key,  String? value)?  updateUserValueByKey,TResult? Function( UserDetailsInfoModel user)?  emitUserDetails,TResult? Function( String hobby)?  addHobby,TResult? Function( String hobby)?  removeHobby,}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo();case _DeletePhoto() when deletePhoto != null:
return deletePhoto(_that.image);case _AddPhoto() when addPhoto != null:
return addPhoto(_that.image);case _SetMainPhoto() when setMainPhoto != null:
return setMainPhoto(_that.image);case _UpdateUserValueByKey() when updateUserValueByKey != null:
return updateUserValueByKey(_that.key,_that.value);case _EmitUserDetails() when emitUserDetails != null:
return emitUserDetails(_that.user);case _AddHobby() when addHobby != null:
return addHobby(_that.hobby);case _RemoveHobby() when removeHobby != null:
return removeHobby(_that.hobby);case _:
  return null;

}
}

}

/// @nodoc


class _GetCurrentUserInfo implements ProfileEvent {
  const _GetCurrentUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.getCurrentUserInfo()';
}


}




/// @nodoc


class _DeletePhoto implements ProfileEvent {
  const _DeletePhoto(this.image);
  

 final  String image;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePhotoCopyWith<_DeletePhoto> get copyWith => __$DeletePhotoCopyWithImpl<_DeletePhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePhoto&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ProfileEvent.deletePhoto(image: $image)';
}


}

/// @nodoc
abstract mixin class _$DeletePhotoCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$DeletePhotoCopyWith(_DeletePhoto value, $Res Function(_DeletePhoto) _then) = __$DeletePhotoCopyWithImpl;
@useResult
$Res call({
 String image
});




}
/// @nodoc
class __$DeletePhotoCopyWithImpl<$Res>
    implements _$DeletePhotoCopyWith<$Res> {
  __$DeletePhotoCopyWithImpl(this._self, this._then);

  final _DeletePhoto _self;
  final $Res Function(_DeletePhoto) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_DeletePhoto(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddPhoto implements ProfileEvent {
  const _AddPhoto(this.image);
  

 final  File image;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPhotoCopyWith<_AddPhoto> get copyWith => __$AddPhotoCopyWithImpl<_AddPhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPhoto&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ProfileEvent.addPhoto(image: $image)';
}


}

/// @nodoc
abstract mixin class _$AddPhotoCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$AddPhotoCopyWith(_AddPhoto value, $Res Function(_AddPhoto) _then) = __$AddPhotoCopyWithImpl;
@useResult
$Res call({
 File image
});




}
/// @nodoc
class __$AddPhotoCopyWithImpl<$Res>
    implements _$AddPhotoCopyWith<$Res> {
  __$AddPhotoCopyWithImpl(this._self, this._then);

  final _AddPhoto _self;
  final $Res Function(_AddPhoto) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_AddPhoto(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _SetMainPhoto implements ProfileEvent {
  const _SetMainPhoto(this.image);
  

 final  String image;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetMainPhotoCopyWith<_SetMainPhoto> get copyWith => __$SetMainPhotoCopyWithImpl<_SetMainPhoto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetMainPhoto&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ProfileEvent.setMainPhoto(image: $image)';
}


}

/// @nodoc
abstract mixin class _$SetMainPhotoCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$SetMainPhotoCopyWith(_SetMainPhoto value, $Res Function(_SetMainPhoto) _then) = __$SetMainPhotoCopyWithImpl;
@useResult
$Res call({
 String image
});




}
/// @nodoc
class __$SetMainPhotoCopyWithImpl<$Res>
    implements _$SetMainPhotoCopyWith<$Res> {
  __$SetMainPhotoCopyWithImpl(this._self, this._then);

  final _SetMainPhoto _self;
  final $Res Function(_SetMainPhoto) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_SetMainPhoto(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateUserValueByKey implements ProfileEvent {
  const _UpdateUserValueByKey({required this.key, required this.value});
  

 final  String key;
 final  String? value;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserValueByKeyCopyWith<_UpdateUserValueByKey> get copyWith => __$UpdateUserValueByKeyCopyWithImpl<_UpdateUserValueByKey>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserValueByKey&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,key,value);

@override
String toString() {
  return 'ProfileEvent.updateUserValueByKey(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserValueByKeyCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateUserValueByKeyCopyWith(_UpdateUserValueByKey value, $Res Function(_UpdateUserValueByKey) _then) = __$UpdateUserValueByKeyCopyWithImpl;
@useResult
$Res call({
 String key, String? value
});




}
/// @nodoc
class __$UpdateUserValueByKeyCopyWithImpl<$Res>
    implements _$UpdateUserValueByKeyCopyWith<$Res> {
  __$UpdateUserValueByKeyCopyWithImpl(this._self, this._then);

  final _UpdateUserValueByKey _self;
  final $Res Function(_UpdateUserValueByKey) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = freezed,}) {
  return _then(_UpdateUserValueByKey(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _EmitUserDetails implements ProfileEvent {
  const _EmitUserDetails(this.user);
  

 final  UserDetailsInfoModel user;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitUserDetailsCopyWith<_EmitUserDetails> get copyWith => __$EmitUserDetailsCopyWithImpl<_EmitUserDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitUserDetails&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileEvent.emitUserDetails(user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmitUserDetailsCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EmitUserDetailsCopyWith(_EmitUserDetails value, $Res Function(_EmitUserDetails) _then) = __$EmitUserDetailsCopyWithImpl;
@useResult
$Res call({
 UserDetailsInfoModel user
});


$UserDetailsInfoModelCopyWith<$Res> get user;

}
/// @nodoc
class __$EmitUserDetailsCopyWithImpl<$Res>
    implements _$EmitUserDetailsCopyWith<$Res> {
  __$EmitUserDetailsCopyWithImpl(this._self, this._then);

  final _EmitUserDetails _self;
  final $Res Function(_EmitUserDetails) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_EmitUserDetails(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel,
  ));
}

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res> get user {
  
  return $UserDetailsInfoModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _AddHobby implements ProfileEvent {
  const _AddHobby(this.hobby);
  

 final  String hobby;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddHobbyCopyWith<_AddHobby> get copyWith => __$AddHobbyCopyWithImpl<_AddHobby>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddHobby&&(identical(other.hobby, hobby) || other.hobby == hobby));
}


@override
int get hashCode => Object.hash(runtimeType,hobby);

@override
String toString() {
  return 'ProfileEvent.addHobby(hobby: $hobby)';
}


}

/// @nodoc
abstract mixin class _$AddHobbyCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$AddHobbyCopyWith(_AddHobby value, $Res Function(_AddHobby) _then) = __$AddHobbyCopyWithImpl;
@useResult
$Res call({
 String hobby
});




}
/// @nodoc
class __$AddHobbyCopyWithImpl<$Res>
    implements _$AddHobbyCopyWith<$Res> {
  __$AddHobbyCopyWithImpl(this._self, this._then);

  final _AddHobby _self;
  final $Res Function(_AddHobby) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hobby = null,}) {
  return _then(_AddHobby(
null == hobby ? _self.hobby : hobby // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveHobby implements ProfileEvent {
  const _RemoveHobby(this.hobby);
  

 final  String hobby;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveHobbyCopyWith<_RemoveHobby> get copyWith => __$RemoveHobbyCopyWithImpl<_RemoveHobby>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveHobby&&(identical(other.hobby, hobby) || other.hobby == hobby));
}


@override
int get hashCode => Object.hash(runtimeType,hobby);

@override
String toString() {
  return 'ProfileEvent.removeHobby(hobby: $hobby)';
}


}

/// @nodoc
abstract mixin class _$RemoveHobbyCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$RemoveHobbyCopyWith(_RemoveHobby value, $Res Function(_RemoveHobby) _then) = __$RemoveHobbyCopyWithImpl;
@useResult
$Res call({
 String hobby
});




}
/// @nodoc
class __$RemoveHobbyCopyWithImpl<$Res>
    implements _$RemoveHobbyCopyWith<$Res> {
  __$RemoveHobbyCopyWithImpl(this._self, this._then);

  final _RemoveHobby _self;
  final $Res Function(_RemoveHobby) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hobby = null,}) {
  return _then(_RemoveHobby(
null == hobby ? _self.hobby : hobby // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileState {

 UserDetailsInfoModel? get currentUser; ProfileProcessState get processState;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,currentUser,processState);

@override
String toString() {
  return 'ProfileState(currentUser: $currentUser, processState: $processState)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 UserDetailsInfoModel? currentUser, ProfileProcessState processState
});


$UserDetailsInfoModelCopyWith<$Res>? get currentUser;$ProfileProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentUser = freezed,Object? processState = null,}) {
  return _then(_self.copyWith(
currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel?,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ProfileProcessState,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserDetailsInfoModelCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileProcessStateCopyWith<$Res> get processState {
  
  return $ProfileProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDetailsInfoModel? currentUser,  ProfileProcessState processState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.currentUser,_that.processState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDetailsInfoModel? currentUser,  ProfileProcessState processState)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.currentUser,_that.processState);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDetailsInfoModel? currentUser,  ProfileProcessState processState)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.currentUser,_that.processState);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.currentUser, this.processState = const ProfileProcessState.loading()});
  

@override final  UserDetailsInfoModel? currentUser;
@override@JsonKey() final  ProfileProcessState processState;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,currentUser,processState);

@override
String toString() {
  return 'ProfileState(currentUser: $currentUser, processState: $processState)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserDetailsInfoModel? currentUser, ProfileProcessState processState
});


@override $UserDetailsInfoModelCopyWith<$Res>? get currentUser;@override $ProfileProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentUser = freezed,Object? processState = null,}) {
  return _then(_ProfileState(
currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel?,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ProfileProcessState,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserDetailsInfoModelCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileProcessStateCopyWith<$Res> get processState {
  
  return $ProfileProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$ProfileProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileProcessState()';
}


}

/// @nodoc
class $ProfileProcessStateCopyWith<$Res>  {
$ProfileProcessStateCopyWith(ProfileProcessState _, $Res Function(ProfileProcessState) __);
}


/// Adds pattern-matching-related methods to [ProfileProcessState].
extension ProfileProcessStatePatterns on ProfileProcessState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success();case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements ProfileProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileProcessState.loading()';
}


}




/// @nodoc


class _Success implements ProfileProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileProcessState.success()';
}


}




/// @nodoc


class _Error implements ProfileProcessState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ProfileProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProfileProcessStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ProfileProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
