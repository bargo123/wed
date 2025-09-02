// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailsInfoModel _$UserDetailsInfoModelFromJson(
  Map<String, dynamic> json,
) => _UserDetailsInfoModel(
  name: json['name'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  gender: json['gender'] as String?,
  height: json['height'] as String?,
  weight: json['weight'] as String?,
  smoker: json['smoker'] as String?,
  hobbies:
      (json['hobbies'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  education: json['education'] as String?,
  accubation: json['accubation'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  mainImage: json['mainImage'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$UserDetailsInfoModelToJson(
  _UserDetailsInfoModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'dateOfBirth': instance.dateOfBirth,
  'gender': instance.gender,
  'height': instance.height,
  'weight': instance.weight,
  'smoker': instance.smoker,
  'hobbies': instance.hobbies,
  'education': instance.education,
  'accubation': instance.accubation,
  'images': instance.images,
  'mainImage': instance.mainImage,
  'avatar': instance.avatar,
};
