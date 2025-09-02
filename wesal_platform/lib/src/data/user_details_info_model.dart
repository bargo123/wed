import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_details_info_model.g.dart';
part 'user_details_info_model.freezed.dart';

@freezed
sealed class UserDetailsInfoModel with _$UserDetailsInfoModel {
  const factory UserDetailsInfoModel({
    String? name,
    String? dateOfBirth,
    String? gender,
    String? height,
    String? weight,
    String? smoker,
    @Default([]) List<String> hobbies,
    String? education,
    String? accubation,
    @Default([]) List<String> images,
    String? mainImage,
    String? avatar,
  }) = _UserDetailsInfoModel;

  factory UserDetailsInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsInfoModelFromJson(json);
}
