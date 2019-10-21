// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    userId: json['userId'] as int,
    id: json['ID'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    sex: json['Sex'] as String,
    avatarUrl: json['avatarUrl'] as String,
    status: json['Status'] as int,
    role: json['role'] as int,
    isVkUser: json['isVkUser'] as bool,
    vkId: json['vkId'] as int,
    email: json['email'] as String,
    bdate: json['bdate'] as String,
    bio: json['bio'] as String,
    hometown: json['hometown'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'ID': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'Sex': instance.sex,
      'avatarUrl': instance.avatarUrl,
      'Status': instance.status,
      'role': instance.role,
      'isVkUser': instance.isVkUser,
      'vkId': instance.vkId,
      'email': instance.email,
      'bdate': instance.bdate,
      'bio': instance.bio,
      'hometown': instance.hometown,
      'password': instance.password,
    };

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return Attribute(
    id: json['id'] as int,
    title: json['title'] as String,
    alias: json['alias'] as String,
    type: json['type'] as String,
    required: json['required'] as bool,
    noIndex: json['noIndex'] as bool,
    value: json['value'] as String,
    multiple: json['multiple'] as bool,
    inView: (json['inView'] as List)
        ?.map((e) =>
            e == null ? null : InView.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Items.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    validate: json['validate'] == null
        ? null
        : Validate.fromJson(json['validate'] as Map<String, dynamic>),
    hasFreeInput: json['hasFreeInput'] as bool,
  );
}

Map<String, dynamic> _$AttributeToJson(Attribute instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'alias': instance.alias,
      'type': instance.type,
      'required': instance.required,
      'noIndex': instance.noIndex,
      'value': instance.value,
      'multiple': instance.multiple,
      'inView': instance.inView,
      'items': instance.items,
      'validate': instance.validate,
      'hasFreeInput': instance.hasFreeInput,
    };

InView _$InViewFromJson(Map<String, dynamic> json) {
  return InView(
    name: json['Name'] as String,
    stepName: json['StepName'] as String,
    index: json['Index'] as int,
  );
}

Map<String, dynamic> _$InViewToJson(InView instance) => <String, dynamic>{
      'Name': instance.name,
      'StepName': instance.stepName,
      'Index': instance.index,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    id: json['id'] as int,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

Validate _$ValidateFromJson(Map<String, dynamic> json) {
  return Validate(
    required: json['required'] as bool,
    max: json['max'] as int,
    maxLen: json['maxLen'] as int,
    minLen: json['minLen'] as int,
  );
}

Map<String, dynamic> _$ValidateToJson(Validate instance) => <String, dynamic>{
      'required': instance.required,
      'max': instance.max,
      'maxLen': instance.maxLen,
      'minLen': instance.minLen,
    };
