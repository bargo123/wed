// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsInfoModel {

 String? get name; String? get dateOfBirth; String? get gender; String? get height; String? get weight; String? get smoker; List<String> get hobbies; String? get education; String? get accubation; List<String> get images; String? get mainImage; String? get avatar;
/// Create a copy of UserDetailsInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<UserDetailsInfoModel> get copyWith => _$UserDetailsInfoModelCopyWithImpl<UserDetailsInfoModel>(this as UserDetailsInfoModel, _$identity);

  /// Serializes this UserDetailsInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailsInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.smoker, smoker) || other.smoker == smoker)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&(identical(other.education, education) || other.education == education)&&(identical(other.accubation, accubation) || other.accubation == accubation)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.mainImage, mainImage) || other.mainImage == mainImage)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,dateOfBirth,gender,height,weight,smoker,const DeepCollectionEquality().hash(hobbies),education,accubation,const DeepCollectionEquality().hash(images),mainImage,avatar);

@override
String toString() {
  return 'UserDetailsInfoModel(name: $name, dateOfBirth: $dateOfBirth, gender: $gender, height: $height, weight: $weight, smoker: $smoker, hobbies: $hobbies, education: $education, accubation: $accubation, images: $images, mainImage: $mainImage, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UserDetailsInfoModelCopyWith<$Res>  {
  factory $UserDetailsInfoModelCopyWith(UserDetailsInfoModel value, $Res Function(UserDetailsInfoModel) _then) = _$UserDetailsInfoModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? dateOfBirth, String? gender, String? height, String? weight, String? smoker, List<String> hobbies, String? education, String? accubation, List<String> images, String? mainImage, String? avatar
});




}
/// @nodoc
class _$UserDetailsInfoModelCopyWithImpl<$Res>
    implements $UserDetailsInfoModelCopyWith<$Res> {
  _$UserDetailsInfoModelCopyWithImpl(this._self, this._then);

  final UserDetailsInfoModel _self;
  final $Res Function(UserDetailsInfoModel) _then;

/// Create a copy of UserDetailsInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? height = freezed,Object? weight = freezed,Object? smoker = freezed,Object? hobbies = null,Object? education = freezed,Object? accubation = freezed,Object? images = null,Object? mainImage = freezed,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,smoker: freezed == smoker ? _self.smoker : smoker // ignore: cast_nullable_to_non_nullable
as String?,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,accubation: freezed == accubation ? _self.accubation : accubation // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,mainImage: freezed == mainImage ? _self.mainImage : mainImage // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDetailsInfoModel].
extension UserDetailsInfoModelPatterns on UserDetailsInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailsInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailsInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailsInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailsInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailsInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailsInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? dateOfBirth,  String? gender,  String? height,  String? weight,  String? smoker,  List<String> hobbies,  String? education,  String? accubation,  List<String> images,  String? mainImage,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailsInfoModel() when $default != null:
return $default(_that.name,_that.dateOfBirth,_that.gender,_that.height,_that.weight,_that.smoker,_that.hobbies,_that.education,_that.accubation,_that.images,_that.mainImage,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? dateOfBirth,  String? gender,  String? height,  String? weight,  String? smoker,  List<String> hobbies,  String? education,  String? accubation,  List<String> images,  String? mainImage,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _UserDetailsInfoModel():
return $default(_that.name,_that.dateOfBirth,_that.gender,_that.height,_that.weight,_that.smoker,_that.hobbies,_that.education,_that.accubation,_that.images,_that.mainImage,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? dateOfBirth,  String? gender,  String? height,  String? weight,  String? smoker,  List<String> hobbies,  String? education,  String? accubation,  List<String> images,  String? mainImage,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailsInfoModel() when $default != null:
return $default(_that.name,_that.dateOfBirth,_that.gender,_that.height,_that.weight,_that.smoker,_that.hobbies,_that.education,_that.accubation,_that.images,_that.mainImage,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailsInfoModel implements UserDetailsInfoModel {
  const _UserDetailsInfoModel({this.name, this.dateOfBirth, this.gender, this.height, this.weight, this.smoker, final  List<String> hobbies = const [], this.education, this.accubation, final  List<String> images = const [], this.mainImage, this.avatar}): _hobbies = hobbies,_images = images;
  factory _UserDetailsInfoModel.fromJson(Map<String, dynamic> json) => _$UserDetailsInfoModelFromJson(json);

@override final  String? name;
@override final  String? dateOfBirth;
@override final  String? gender;
@override final  String? height;
@override final  String? weight;
@override final  String? smoker;
 final  List<String> _hobbies;
@override@JsonKey() List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

@override final  String? education;
@override final  String? accubation;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String? mainImage;
@override final  String? avatar;

/// Create a copy of UserDetailsInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsInfoModelCopyWith<_UserDetailsInfoModel> get copyWith => __$UserDetailsInfoModelCopyWithImpl<_UserDetailsInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailsInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.smoker, smoker) || other.smoker == smoker)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&(identical(other.education, education) || other.education == education)&&(identical(other.accubation, accubation) || other.accubation == accubation)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.mainImage, mainImage) || other.mainImage == mainImage)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,dateOfBirth,gender,height,weight,smoker,const DeepCollectionEquality().hash(_hobbies),education,accubation,const DeepCollectionEquality().hash(_images),mainImage,avatar);

@override
String toString() {
  return 'UserDetailsInfoModel(name: $name, dateOfBirth: $dateOfBirth, gender: $gender, height: $height, weight: $weight, smoker: $smoker, hobbies: $hobbies, education: $education, accubation: $accubation, images: $images, mainImage: $mainImage, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsInfoModelCopyWith<$Res> implements $UserDetailsInfoModelCopyWith<$Res> {
  factory _$UserDetailsInfoModelCopyWith(_UserDetailsInfoModel value, $Res Function(_UserDetailsInfoModel) _then) = __$UserDetailsInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? dateOfBirth, String? gender, String? height, String? weight, String? smoker, List<String> hobbies, String? education, String? accubation, List<String> images, String? mainImage, String? avatar
});




}
/// @nodoc
class __$UserDetailsInfoModelCopyWithImpl<$Res>
    implements _$UserDetailsInfoModelCopyWith<$Res> {
  __$UserDetailsInfoModelCopyWithImpl(this._self, this._then);

  final _UserDetailsInfoModel _self;
  final $Res Function(_UserDetailsInfoModel) _then;

/// Create a copy of UserDetailsInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? height = freezed,Object? weight = freezed,Object? smoker = freezed,Object? hobbies = null,Object? education = freezed,Object? accubation = freezed,Object? images = null,Object? mainImage = freezed,Object? avatar = freezed,}) {
  return _then(_UserDetailsInfoModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,smoker: freezed == smoker ? _self.smoker : smoker // ignore: cast_nullable_to_non_nullable
as String?,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,education: freezed == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as String?,accubation: freezed == accubation ? _self.accubation : accubation // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,mainImage: freezed == mainImage ? _self.mainImage : mainImage // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
