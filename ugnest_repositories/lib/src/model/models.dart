import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class User {
  int userId;
  @JsonKey(name: 'ID')
  int id;
  String firstName;
  String lastName;
  @JsonKey(name: 'Sex')
  String sex;
  String avatarUrl;
  @JsonKey(name: 'Status')
  int status;
  int role;
  bool isVkUser;
  int vkId;
  String email;
  String bdate;
  String bio;
  String hometown;
  String password;

  User(
      {this.userId,
      this.id,
      this.firstName,
      this.lastName,
      this.sex,
      this.avatarUrl,
      this.status,
      this.role,
      this.isVkUser,
      this.vkId,
      this.email,
      this.bdate,
      this.bio,
      this.hometown,
      this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Attribute {
  int id;
  String title;
  String alias;
  String type;
  bool required;
  bool noIndex;
  String value;
  bool multiple;
  List<InView> inView;
  List<Items> items;
  Validate validate;
  bool hasFreeInput;

  Attribute(
      {this.id,
      this.title,
      this.alias,
      this.type,
      this.required,
      this.noIndex,
      this.value,
      this.multiple,
      this.inView,
      this.items,
      this.validate,
      this.hasFreeInput});

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeToJson(this);
}

@JsonSerializable()
class InView {
  @JsonKey(name: 'Name')
  String name;
  @JsonKey(name: 'StepName')
  String stepName;
  @JsonKey(name: 'Index')
  int index;

  InView({this.name, this.stepName, this.index});

  factory InView.fromJson(Map<String, dynamic> json) => _$InViewFromJson(json);

  Map<String, dynamic> toJson() => _$InViewToJson(this);
}

@JsonSerializable()
class Items {
  int id;
  String title;

  Items({this.id, this.title});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class Validate {
  bool required;
  int max;
  int maxLen;
  int minLen;

  Validate({this.required, this.max, this.maxLen, this.minLen});

  factory Validate.fromJson(Map<String, dynamic> json) =>
      _$ValidateFromJson(json);

  Map<String, dynamic> toJson() => _$ValidateToJson(this);
}
